import Foundation

// cart item as a struct
struct CartItem {
    //properties
    var product: Product
    private(set) var quantity: Int
    
    //computed property
    var subtotal: Double {
        Double(quantity) * product.price
    }
    
    //initializer with validation of quantity
    init?(product: Product, quantity: Int) {
        guard quantity > 0 else { return nil }
        self.product = product
        self.quantity = quantity
    }
    
    //mutated function to update the quantity
    mutating func updateQuantity(_ newQuantity: Int) {
        guard newQuantity > 0 else { return }
        quantity = newQuantity
    }
    
    //mutated function to increase the quantity
    mutating func increaseQuantity(by amount: Int) {
        guard amount > 0 else { return }
        quantity += amount
    }
}
