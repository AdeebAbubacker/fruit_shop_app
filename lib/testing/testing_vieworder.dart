// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:intl/intl.dart'; // for date formatting
// import 'package:firebase_auth/firebase_auth.dart';


// class ViewOrdersScreen extends StatelessWidget {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final FirebaseFirestore _db = FirebaseFirestore.instance;

//   Future<List<Order>> _fetchOrders() async {
//     var user = _auth.currentUser;
//     if (user != null) {
//       QuerySnapshot querySnapshot = await _db
//           .collection('orders')
//           .where('userId', isEqualTo: user.uid)
//           .orderBy('timestamp', descending: true)
//           .get();

//       return querySnapshot.docs.map((doc) => Order.fromFirestore(doc)).toList();
//     } else {
//       throw Exception("No user is currently logged in.");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Your Orders'),
//       ),
//       body: FutureBuilder(
//         future: _fetchOrders(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else if (!snapshot.hasData || (snapshot.data as List).isEmpty) {
//             return Center(child: Text('No orders found.'));
//           } else {
//             List<Order> orders = snapshot.data as List<Order>;

//             return ListView.builder(
//               itemCount: orders.length,
//               itemBuilder: (context, index) {
//                 Order order = orders[index];
//                 return Card(
//                   margin: EdgeInsets.all(8.0),
//                   child: Padding(
//                     padding: EdgeInsets.all(16.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Order ID: ${order.id}',
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                         Text(
//                           'Total Price: \$${order.totalPrice.toStringAsFixed(2)}',
//                         ),
//                         Text(
//                           'Date: ${DateFormat.yMMMd().format(order.timestamp)}',
//                         ),
//                         SizedBox(height: 8.0),
//                         Text(
//                           'Items:',
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                         ...order.items.map((item) {
//                           return Text('${item['quantity']} x ${item['name']}');
//                         }).toList(),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             );
//           }
//         },
//       ),
//     );
//   }
// }

// class Order {
//   final String id;
//   final List<Map<String, dynamic>> items;
//   final double totalPrice;
//   final DateTime timestamp;

//   Order({
//     required this.id,
//     required this.items,
//     required this.totalPrice,
//     required this.timestamp,
//   });

//   factory Order.fromFirestore(DocumentSnapshot doc) {
//     Map data = doc.data() as Map<String, dynamic>;
//     return Order(
//       id: doc.id,
//       items: List<Map<String, dynamic>>.from(data['items']),
//       totalPrice: data['totalPrice'],
//       timestamp: (data['timestamp'] as Timestamp).toDate(),
//     );
//   }
// }