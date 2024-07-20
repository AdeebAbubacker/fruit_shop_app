// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';


// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// class OrderScreen extends StatefulWidget {
//   @override
//   _OrderScreenState createState() => _OrderScreenState();
// }

// class _OrderScreenState extends State<OrderScreen> {
//   final OrderService _orderService = OrderService();
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final FirebaseFirestore _db = FirebaseFirestore.instance;

//   Future<List<Map<String, dynamic>>> _getCartItems() async {
//     var user = _auth.currentUser;
//     if (user != null) {
//       QuerySnapshot querySnapshot = await _db
//           .collection('carts')
//           .doc(user.uid)
//           .collection('items')
//           .get();

//       return querySnapshot.docs.map((doc) => doc.data() as Map<String, dynamic>).toList();
//     } else {
//       throw Exception("No user is currently logged in.");
//     }
//   }

//   double _calculateTotalPrice(List<Map<String, dynamic>> items) {
//     double totalPrice = 0.0;
//     for (var item in items) {
//       totalPrice += item['quantity'] * 1;
//     }
//     return totalPrice;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Place Order'),
//       ),
//       body: FutureBuilder(
//         future: _getCartItems(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else if (!snapshot.hasData || (snapshot.data as List).isEmpty) {
//             return Center(child: Text('No items in the cart'));
//           } else {
//             List<Map<String, dynamic>> items = snapshot.data as List<Map<String, dynamic>>;
//             double totalPrice = _calculateTotalPrice(items);

//             return Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Review Your Order',
//                     style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 16),
//                   Expanded(
//                     child: ListView.builder(
//                       itemCount: items.length,
//                       itemBuilder: (context, index) {
//                         var item = items[index];
//                         return ListTile(
//                           title: Text('ddd'),
//                           subtitle: Text('Quantity: ${item['quantity']}'),
//                           trailing: Text('\$${item['quantity'] * 1}'),
//                         );
//                       },
//                     ),
//                   ),
//                   SizedBox(height: 16),
//                   Text(
//                     'Total: \$${totalPrice.toStringAsFixed(2)}',
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 16),
//                   Center(
//                     child: ElevatedButton(
//                       onPressed: () async {
//                         try {
//                           await _orderService.placeOrder(items, totalPrice);
//                           ScaffoldMessenger.of(context).showSnackBar(
//                             SnackBar(content: Text('Order placed successfully!')),
//                           );
//                           Navigator.pop(context);
//                         } catch (e) {
//                           ScaffoldMessenger.of(context).showSnackBar(
//                             SnackBar(content: Text('Failed to place order: $e')),
//                           );
//                         }
//                       },
//                       child: Text('Place Order'),
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           }
//         },
//       ),
//     );
//   }
// }


// class OrderService {
//   final FirebaseFirestore _db = FirebaseFirestore.instance;
//   final FirebaseAuth _auth = FirebaseAuth.instance;

//   Future<void> placeOrder(List<Map<String, dynamic>> items, double totalPrice) async {
//     var user = _auth.currentUser;
//     if (user != null) {
//       DocumentReference orderRef = _db.collection('orders').doc();

//       await orderRef.set({
//         'userId': user.uid,
//         'items': items,
//         'totalPrice': totalPrice,
//         'timestamp': FieldValue.serverTimestamp(),
//       });

//       // Optionally, you can clear the cart after placing the order
//       DocumentReference cartRef = _db.collection('carts').doc(user.uid);
//       await cartRef.collection('items').get().then((snapshot) {
//         for (DocumentSnapshot ds in snapshot.docs) {
//           ds.reference.delete();
//         }
//       });
//     } else {
//       throw Exception("No user is currently logged in.");
//     }
//   }
// }
