// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// class ItemScreen extends StatefulWidget {
//   ItemScreen({super.key});

//   @override
//   _ItemScreenState createState() => _ItemScreenState();
// }

// class _ItemScreenState extends State<ItemScreen> {
//   int quantity = 1;
//   final CartService _cartService = CartService();

//   @override
//   Widget build(BuildContext context) {
//     final Map<String, dynamic> item =
//         ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(item['name']),
//       ),
//       body: Column(
//         children: [
//           Image.network(item['imageUrl']),
//           Text(item['name']),
//           Text('\$${item['price']}'),
//           Row(
//             children: [
//               IconButton(
//                 icon: Icon(Icons.remove),
//                 onPressed: () {
//                   setState(() {
//                     if (quantity > 1) quantity--;
//                   });
//                 },
//               ),
//               Text(quantity.toString()),
//               IconButton(
//                 icon: Icon(Icons.add),
//                 onPressed: () {
//                   setState(() {
//                     quantity++;
//                   });
//                 },
//               ),
//             ],
//           ),
//           ElevatedButton(
//             onPressed: () {
//               _cartService.addToCart(item['name'], quantity);
//               Navigator.pop(context);
//             },
//             child: Text('Add to Cart'),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class CartService {
//   final FirebaseFirestore _db = FirebaseFirestore.instance;
//   final FirebaseAuth _auth = FirebaseAuth.instance;

//   Future<void> addToCart(String itemId, int quantity) async {
//     var user = _auth.currentUser;
//     if (user != null) {
//       DocumentReference cartRef = _db.collection('carts').doc(user.uid);
//       DocumentReference itemRef = cartRef.collection('items').doc(itemId);

//       await _db.runTransaction((transaction) async {
//         DocumentSnapshot snapshot = await transaction.get(itemRef);

//         if (!snapshot.exists) {
//           transaction.set(itemRef, {
//             'quantity': quantity,
//             'itemDetails': _db.collection('items').doc(itemId),
//           });
//         } else {
//           int newQuantity = snapshot['quantity'] + quantity;
//           transaction.update(itemRef, {'quantity': newQuantity});
//         }
//       });
//     }
//   }
// }
