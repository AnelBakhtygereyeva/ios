import Foundation
//Product is struct here
struct Product {
    // enum for category rypes
    enum Category: String {
        case electronics
        case clothing
        case food
        case books
    }
    
    // properties for product
    let id: String
    let name: String
    let price: Double
    let category: Category
    let description: String
    var stockQuantity: Int // this was added because of bonus task 3
    
    // computed property
    var displayPrice: String {
        String(format: "$%.2f", price)
    }
    //checking for availability of the product by quantity
    var isAvailable: Bool {
        stockQuantity > 0
    }
    
    // initializer with validation of the price and quantity in stock
    init?(id: String, name: String, price: Double, category: Category, description: String, stockQuantity: Int = 0) {
        guard price > 0 else { return nil }
        guard stockQuantity >= 0 else { return nil }
        self.id = id
        self.name = name
        self.price = price
        self.category = category
        self.description = description
        self.stockQuantity = stockQuantity
    }
}
