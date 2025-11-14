//
//  FavoriteSection.swift
//  TableViewFavItems
//
//  Created by anel bakhtygereyeva on 14.11.2025.
//

import Foundation

enum FavoriteSection: Int, CaseIterable {
    case movies
    case music
    case books
    case courses
    
    var title: String {
        switch self {
        case .movies:
            return "Favorite Movies"
        case .music:
            return "Favorite Music"
        case .books:
            return "Favorite Books"
        case .courses:
            return "Favorite University Courses"
        }
    }
}
