//
//  CoursesViewController.swift
//  TabBar
//
//  Created by anel bakhtygereyeva on 22.11.2025.
//

import UIKit

class CoursesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    var items = courseItems
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CourseItemCell", for: indexPath) as? CourseItemCell else {
            return UITableViewCell()
        }

        let course = items[indexPath.row]
        cell.itemTitleLabel.text = course.title
        cell.itemImageView.image = UIImage(named: course.imageName)
        cell.itemImageView.clipsToBounds = true
        cell.itemImageView.layer.cornerRadius = 8
        cell.selectionStyle = .none

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        performSegue(withIdentifier: "CourseDetailsShow", sender: items[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "CourseDetailsShow",
            let detailVC = segue.destination as? DetailsViewController,
            let item = sender as? Item {
            detailVC.item = item
        }
    }
}
