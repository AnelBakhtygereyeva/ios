//
//  FavoriteItemCell.swift
//  TableViewFavItems
//
//  Created by anel bakhtygereyeva on 15.11.2025.
//

import Foundation
import UIKit

class FavoriteItemCell: UITableViewCell {
    
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var subtitleLabel: UILabel!
    @IBOutlet private weak var imageContainer: UIImageView!
    @IBOutlet private weak var reviewText: UITextView!
    
    func configure(with item: FavoriteItem){
        imageContainer.image = item.image
        titleLabel.text = item.title
        subtitleLabel.text = item.subtitle
        reviewText.text = item.review
        
        imageContainer.layer.cornerRadius = 8
        
        titleLabel.numberOfLines = 3
        titleLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        
        subtitleLabel.font = UIFont.systemFont(ofSize: 14)
        subtitleLabel.numberOfLines = 3
        
        reviewText.font = UIFont.systemFont(ofSize: 12)
        reviewText.isScrollEnabled = true
        reviewText.isEditable = false
        reviewText.isSelectable = false
        reviewText.showsVerticalScrollIndicator = true
        reviewText.textContainer.lineBreakMode = .byClipping
        reviewText.textContainer.lineFragmentPadding = 0
    }
}
