import Foundation

class ShoppingCart {
    enum DiscountType {
        case percentage(Double)
        case fixedAmount(Double)
        case buyXGetY(buy: Int, get: Int)
    }
    //some properties
    //private(set) for encupsulation
    private(set) var items: [CartItem] = []
    var discountType: DiscountType?   // for advanced discounts for bonus

    init() {
        self.items = []
        self.discountType = nil
    }

    //operatins

    //adding a new item
    func addItem(product: Product, quantity: Int = 1) {
        guard quantity > 0 else { return }

        if let index = items.firstIndex(where: { $0.product.id == product.id }) {
            let newQuantity = items[index].quantity + quantity
            guard newQuantity <= product.stockQuantity else { return } // stock checking
            items[index].increaseQuantity(by: quantity)
        } else {
            guard quantity <= product.stockQuantity else { return } // stock checking
            guard let cartItem = CartItem(product: product, quantity: quantity) else { return }
            items.append(cartItem)
        }
    }

    // removing item from the cart
    func removeItem(productId: String) {
        items.removeAll { $0.product.id == productId }
    }

    // updating the quantity by finding the item, if it is zero, remove it
    func updateItemQuantity(productId: String, quantity: Int) {
        guard let index = items.firstIndex(where: { $0.product.id == productId }) else { return }

        if quantity <= 0 {
            removeItem(productId: productId)
        } else {
            items[index].updateQuantity(quantity)
        }
    }

    // removing all
    func clearCart() {
        items.removeAll()
    }

    // some computed properties

    // finding the subtotal of all items
    var subtotal: Double {
        items.reduce(0) { $0 + $1.subtotal }
    }

    // applying discount amount based on the inserted special type
    var discountAmount: Double {
            guard let discount = discountType else { return 0 }

            switch discount {
            case .percentage(let percent):
                return subtotal * (percent / 100)
            case .fixedAmount(let amount):
                return min(amount, subtotal) // cannot exceed subtotal
            case .buyXGetY(let buy, let get):
                // Apply Buy X Get Y free to each product individually
                var totalDiscount = 0.0
                for item in items {
                    if item.quantity >= buy {
                        let freeItems = (item.quantity / (buy + get)) * get
                        totalDiscount += Double(freeItems) * item.product.price
                    }
                }
                return totalDiscount
            }
        }

    // calculating the total after the discount
    var total: Double {
        subtotal - discountAmount
    }

    // total number of individual items
    var itemCount: Int {
        items.reduce(0) { $0 + $1.quantity }
    }

    // checking if the cart is empty
    var isEmpty: Bool {
        items.isEmpty
    }
}

