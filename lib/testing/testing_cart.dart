// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// class CartScreen extends StatelessWidget {
//   final FirebaseFirestore _db = FirebaseFirestore.instance;
//   final FirebaseAuth _auth = FirebaseAuth.instance;

//   @override
//   Widget build(BuildContext context) {
//     var user = _auth.currentUser;

//     if (user == null) {
//       return Center(child: Text('Please log in to view your cart'));
//     }

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Cart'),
//       ),
//       body: StreamBuilder(
//         stream: _db.collection('carts').doc(user.uid).collection('items').snapshots(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else if (!snapshot.hasData || (snapshot.data as QuerySnapshot).docs.isEmpty) {
//             return Center(child: Text('No items in your cart'));
//           } else {
//             var cartItems = (snapshot.data as QuerySnapshot).docs;
//             return ListView.builder(
//               itemCount: cartItems.length,
//               itemBuilder: (context, index) {
//                 var item = cartItems[index].data() as Map<String, dynamic>;
//                 return ListTile(
//                   title: Text('Item ID: ${cartItems[index].id}'),
//                   subtitle: Text('Quantity: ${item['quantity']}'),
//                 );
//               },
//             );
//           }
//         },
//       ),
//     );
//   }
// }
