class CartItem {
  final String imgUrl;
  final int quantity;
  final String price;
  final String name;

  CartItem({
    required this.imgUrl,
    required this.quantity,
    required this.price,
    required this.name,
  });

  // Factory method to create a CartItem from a map
  factory CartItem.fromMap(Map<String, dynamic> map) {
    return CartItem(
      imgUrl: map['imgUrl'] as String,
      quantity: map['quantity'] as int,
      price: map['price'] as String,
      name: map['name'] as String,
    );
  }

  // Method to convert CartItem to a map
  Map<String, dynamic> toMap() {
    return {
      'imgUrl': imgUrl,
      'quantity': quantity,
      'price': price,
      'name': name,
    };
  }
}
