import Foundation
//testing

// 1. creating sample products with stock for launch data
let laptop = Product(id: "P001", name: "MacBook Pro", price: 1999.99, category: .electronics, description: "Apple laptop", stockQuantity: 5)!
let book = Product(id: "P002", name: "Swift Programming", price: 39.99, category: .books, description: "Learn Swift", stockQuantity: 10)!
let headphones = Product(id: "P003", name: "Sony Headphones", price: 149.99, category: .electronics, description: "Noise-cancelling headphones", stockQuantity: 7)!

// 2. testing the adding items to cart operation
let cart = ShoppingCart()
cart.addItem(product: laptop, quantity: 1)
cart.addItem(product: book, quantity: 2)

// 3. testing the adding same product twice (should update quantity) operation
cart.addItem(product: laptop, quantity: 1)

// 4. testing cart calculations
print("Subtotal is: \(cart.subtotal)")
print("Item count is: \(cart.itemCount)")

// 5. testing applyting the discount type
cart.discountType = .percentage(10)      // 10% off
print("Total with discount is: \(cart.total)")

// 6. testing the removing items operation
cart.removeItem(productId: book.id)
print("After removing book, item count is now: \(cart.itemCount)")

// 7. demonstrating reference type behavior
func modifyCart(_ cart: ShoppingCart) {
    cart.addItem(product: headphones, quantity: 1)
}
modifyCart(cart)
// the original cart is modified because ShoppingCart is a class (which is reference type)
print("After modifying the cart, item count is now: \(cart.itemCount)")

// 8. demonstrating the value type behavior
let item1 = CartItem(product: laptop, quantity: 1)!
var item2 = item1
item2.updateQuantity(5)
// item1.quantity remains 1 because CartItem is a struct (which is value type)
print("Original CartItem quantity: \(item1.quantity), Modified copy quantity: \(item2.quantity)")

// 9. creating an order from cart
let address = Address(street: "123 Main St", city: "Almaty", zipCode: "050000", country: "Kazakhstan")
let order = Order(from: cart, shippingAddress: address)

// 10. modifying cart after order creation
cart.clearCart()
//the order remains unchanged because it's an immutable snapshot
print("Order items count: \(order.itemCount)") //it should not be 0 and is not
print("Cart items count: \(cart.itemCount)")   //it should be 0 and it is

//bonus: printing out the totals
print("Order subtotal: \(order.subtotal)")
print("Order discount: \(order.discountAmount)")
print("Order total: \(order.total)")

