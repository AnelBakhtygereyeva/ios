import Foundation

//order is a struct
struct Order {
    //with given properties
    let orderId: String
    let items: [CartItem]
    let subtotal: Double
    let discountAmount: Double
    let total: Double
    let timestamp: Date
    let shippingAddress: Address

    
    //creating snapshot from ShoppingCart
    init(from cart: ShoppingCart, shippingAddress: Address) {
        //generating UUID
        self.orderId = UUID().uuidString
        //copying from cart
        self.items = cart.items
        self.subtotal = cart.subtotal
        self.discountAmount = cart.discountAmount
        self.total = cart.total
        self.timestamp = Date() //set to current time
        self.shippingAddress = shippingAddress
    }
    //computed property
    var itemCount: Int {
        items.reduce(0) { $0 + $1.quantity }
    }
}

