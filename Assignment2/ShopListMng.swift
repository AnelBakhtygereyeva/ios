//
//  ShopListMng.swift
//  Assignment2
//
//  Created by anel bakhtygereyeva on 26.09.2025.
//

func runShopListMng() {
    var shopList: [String] = []
    var shopping = true
    
    while shopping {
        print("\nAction: 1 - Add, 2 - Remove, 3 - Show, 4 - Exit")
        if let action = readLine() {
            switch action {
            case "1":
                print("Enter item to add:")
                if let itemToAdd = readLine() {
                    shopList.append(itemToAdd)
                }
            case "2":
                print("Enter item to remove:")
                if let itemToRemove = readLine(), let index = shopList.firstIndex(of: itemToRemove) {
                    shopList.remove(at: index)
                }
            case "3":
                print("Shopping list: \(shopList.joined(separator: ", "))")
            case "4":
                shopping = false
            default:
                print("Invalid action!")
            }
        }
    }
}
