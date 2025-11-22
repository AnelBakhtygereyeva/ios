//
//  MusicViewController.swift
//  TabBar
//
//  Created by anel bakhtygereyeva on 22.11.2025.
//

import UIKit

class MusicViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    var items = musicItems
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MusicItemCell", for: indexPath) as? MusicItemCell else {
            return UITableViewCell()
        }
            
        let item = items[indexPath.row]
        cell.itemTitleLabel.text = item.title
        cell.itemImageView.image = UIImage(named: item.imageName)
        cell.itemImageView.clipsToBounds = true
        cell.itemImageView.layer.cornerRadius = 8
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        performSegue(withIdentifier: "MusicDetailsShow", sender: items[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MusicDetailsShow",
            let detailVC = segue.destination as? DetailsViewController,
            let item = sender as? Item {
            detailVC.item = item
        }
    }
}
