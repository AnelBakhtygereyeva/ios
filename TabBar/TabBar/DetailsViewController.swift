//
//  DetailsViewController.swift
//  TabBar
//
//  Created by anel bakhtygereyeva on 22.11.2025.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var reviewTextView: UITextView!

    var item: Item?

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let item = item else { return }

        itemImageView.image = UIImage(named: item.imageName)
        titleLabel.text = item.title
        descriptionTextView.text = item.description
        reviewTextView.text = item.review
    }
}
