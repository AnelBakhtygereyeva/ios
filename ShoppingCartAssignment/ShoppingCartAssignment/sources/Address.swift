import Foundation

//it is a struct
struct Address {
    //with some properties
    let street: String
    let city: String
    let zipCode: String
    let country: String

    //computed property for formatting
    var formattedAddress: String {
        """
        \(street)
        \(city), \(zipCode)
        \(country)
        """
    }
}

