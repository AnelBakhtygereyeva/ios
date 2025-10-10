import Foundation

class User {
    //some properties
    let userId: String
    let name: String
    let email: String
    private(set) var orderHistory: [Order] = []

    init(userId: String = UUID().uuidString, name: String, email: String) {
        self.userId = userId
        self.name = name
        self.email = email
        self.orderHistory = []
    }

    //it places a new order and adds it to the user's order history
    func placeOrder(_ order: Order) {
        orderHistory.append(order)
    }

    //it computes the total amount spent across all orders
    var totalSpent: Double {
        orderHistory.reduce(0) { $0 + $1.total }
    }
}

