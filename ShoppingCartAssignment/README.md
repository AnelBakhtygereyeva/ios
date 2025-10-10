1. Why did you choose class for ShoppingCart?

I decided to use the class for ShoppingCart because the shopping cart which is in-app is a single, centralized object. It needs a unique identifier, and its state must be accessible and changeable from different parts of the program. Using a class allows multiple functions or views to work with the same bucket instance. Any changes, for example, adding or removing items are instantly reflected wherever this shopping cart is used. This behavior is critically important to keep the bucket up-to-date in real time.

2. Why did you choose struct for Product and Order?

struct is suitable for representing Product and Order because they are primarily containers for data and do not require unique identification to be maintained between different parts of the program. Products can be easily copied and transferred without fear that changes to the copy will affect the original. Orders, on the other hand, are immutable "snapshots" of the contents of the shopping cart at the time of checkout. Using struct ensures that once an order is created, it cannot be accidentally changed. structs operate on a value-by-value basis, which provides greater security and predictability for such data.

3. An example in which the semantics of links is important

The semantics of links is crucial for ShoppingCart. Imagine that you are passing a shopping cart object to a function that adds a new product. Due to the fact that ShoppingCart is a class (it uses link semantics), the original instance of the shopping cart is updated automatically. This is extremely important because all parts of the application should see the same current bucket status. If ShoppingCart was a struct, the function would work with a copy, and the changes would not be reflected in the original shopping cart, which would violate the expected behavior.

4. An example in which the semantics of values is important

The semantics of the values are important for the CartItem (basket element), which is represented as a struct. If I copy the CartItem to a new variable and change the quantity in that copy, the original CartItem remains unchanged. This prevents unexpected side effects and ensures that each item in the cart can be handled independently if necessary. This ensures security and predictability when working with individual items or when creating snapshots of an order.

5. Emerging problems and ways to solve them

One of the difficulties was to implement a complex system of discounts (percentage, fixed and "buy X, get Y") so that the calculations were correct. At first, I had run into problems when applying the "buy X, get Y" logic to multiple products at the same time. I managed to solve this problem by going through each of them in the basket one by one, calculating the number of available free items and multiplying it by the price of the product to calculate the discount. Another problem was inventory management: I had to ensure that the quantity of added items did not exceed the available quantity. I have implemented checks in the add method that prevented excess orders and ensured that the correct quantities are always displayed in the cart.
