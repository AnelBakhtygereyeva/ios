//
//  MoviesViewController.swift
//  TabBar
//
//  Created by anel bakhtygereyeva on 22.11.2025.
//

import Foundation
import UIKit

class MoviesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var items = movieItems
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieItemCell", for: indexPath) as? MovieItemCell else {
            return UITableViewCell()
        }

        let movie = items[indexPath.row]
        cell.itemTitleLabel.text = movie.title
        cell.itemImageView.image = UIImage(named: movie.imageName)
        cell.itemImageView.clipsToBounds = true
        cell.itemImageView.layer.cornerRadius = 8
        cell.selectionStyle = .none

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            // Trigger the storyboard segue manually
            performSegue(withIdentifier: "MovieDetailsShow", sender: items[indexPath.row])
        }

        // Pass the selected item to DetailsViewController
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "MovieDetailsShow",
               let detailVC = segue.destination as? DetailsViewController,
               let movie = sender as? Item {
                detailVC.item = movie
            }
        }
}

