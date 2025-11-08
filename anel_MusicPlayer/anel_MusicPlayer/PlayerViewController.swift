//
//  LibraryViewController.swift
//  anel_MusicPlayer
//
//  Created by anel bakhtygereyeva on 07.11.2025.
//

import UIKit
import AVFoundation

class PlayerViewController: UIViewController {

    @IBOutlet weak var coverImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var elapsedLabel: UILabel!
    @IBOutlet weak var progressSlider: UISlider!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var prevButton: UIButton!
    @IBOutlet weak var playPauseButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    var tracks: [Track] = []
    var currentIndex = 0

    private var player: AVAudioPlayer?
    private var timer: Timer?
        
    override func viewDidLoad() {
        super.viewDidLoad()
        loadTrack()
    }
    
    private func loadTrack() {
        guard tracks.indices.contains(currentIndex) else { return }
        let track = tracks[currentIndex]

        do {
            player = try AVAudioPlayer(contentsOf: track.url)
            player?.prepareToPlay()
            updateUI()
            player?.play()
            playPauseButton.setImage(UIImage(systemName: "pause.fill"), for: .normal)
            startTimer()
        } catch {
            print("Audio load error:", error)
        }
    }
    
    private func updateUI() {
        guard tracks.indices.contains(currentIndex) else { return }
        let track = tracks[currentIndex]
        titleLabel.text = track.title
        artistLabel.text = track.artist
        coverImageView.image = track.artwork ?? UIImage(systemName: "music.note")
        durationLabel.text = formatTime(player?.duration ?? 0)
        elapsedLabel.text = formatTime(0)
        progressSlider.value = 0
    }
    
    private func startTimer() {
        stopTimer()
        timer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { [weak self] _ in
        guard let self = self, let player = self.player else { return }
        self.elapsedLabel.text = self.formatTime(player.currentTime)
        self.progressSlider.value = Float(player.currentTime / player.duration)
        }
    }
    
    private func stopTimer() {
            timer?.invalidate()
            timer = nil
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        guard let player = player else { return }
        player.currentTime = TimeInterval(sender.value) * player.duration
        elapsedLabel.text = formatTime(player.currentTime)
    }
    
    @IBAction func playPauseTapped(_ sender: UIButton) {
        guard let player = player else { return }
            if player.isPlaying {
                player.pause()
                playPauseButton.setImage(UIImage(systemName: "play.fill"), for: .normal)
                stopTimer()
            } else {
                player.play()
                playPauseButton.setImage(UIImage(systemName: "pause.fill"), for: .normal)
                startTimer()
            }
    }
    
    @IBAction func prevTapped(_ sender: UIButton) {
        currentIndex = (currentIndex - 1 + tracks.count) % tracks.count
        loadTrack()
    }
    
    @IBAction func nextTapped(_ sender: UIButton) {
        currentIndex = (currentIndex + 1) % tracks.count
        loadTrack()
    }
    
    
    
    private func formatTime(_ time: TimeInterval) -> String {
        let total = Int(time)
        return String(format: "%02d:%02d", total / 60, total % 60)
    }
}

