import UIKit
import AVFoundation
import UniformTypeIdentifiers

class LibraryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UIDocumentPickerDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tracks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SongCell", for: indexPath) as? SongCell else {
            return UITableViewCell()  // Fallback if dequeue fails
        }
        let track = tracks[indexPath.row]
        cell.titleLabel.text = track.title
        cell.artistLabel.text = track.artist ?? "Unknown Artist"
        cell.artworkImageView.image = track.artwork ?? UIImage(systemName: "music.note")
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let playerVC = storyboard?.instantiateViewController(withIdentifier: "PlayerViewController") as! PlayerViewController
        playerVC.tracks = tracks
        playerVC.currentIndex = indexPath.row
        navigationController?.pushViewController(playerVC, animated: true)
    }
    
    
    @IBOutlet weak var importButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    private var tracks: [Track] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    @IBAction func importSongsTapped(_ sender: UIButton) {
        let types: [UTType] = [.audio, .mp3]
        let picker = UIDocumentPickerViewController(forOpeningContentTypes: types, asCopy: true)
        picker.delegate = self
        picker.allowsMultipleSelection = true
        present(picker, animated: true)
    }
    
    private func addTracks(from urls: [URL]) {
        let docs = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        var newTracks: [Track] = []
        
        for url in urls {
            var didStart = false
            if url.startAccessingSecurityScopedResource() {
                didStart = true
            }
            
            let destURL = docs.appendingPathComponent(url.lastPathComponent)
            do {
                if !FileManager.default.fileExists(atPath: destURL.path) {
                    try FileManager.default.copyItem(at: url, to: destURL)
                }
                
                let asset = AVAsset(url: destURL)
                let title = asset.commonMetadata.first { $0.commonKey?.rawValue == "title" }?.stringValue ?? destURL.deletingPathExtension().lastPathComponent
                let artist = asset.commonMetadata.first { $0.commonKey?.rawValue == "artist" }?.stringValue
                var artwork: UIImage? = nil
                if let data = asset.commonMetadata.first(where: { $0.commonKey?.rawValue == "artwork" })?.dataValue {
                    artwork = UIImage(data: data)
                }
                
                let track = Track(url: destURL, title: title, artist: artist, artwork: artwork)
                newTracks.append(track)
                
            } catch {
                print("copy error:", error)
            }
            
            if didStart {
                url.stopAccessingSecurityScopedResource()
            }
        }
        tracks.append(contentsOf: newTracks)
        tableView.reloadData()
    }
    
    func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentsAt urls: [URL]) {
        controller.dismiss(animated: true)
        addTracks(from: urls)
    }
}
