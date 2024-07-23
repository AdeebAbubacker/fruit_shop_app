


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_shop_app/core/model/cart_item/cart_item.dart';

class OrderService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> placeOrder(List<Map<String, dynamic>> items, double totalPrice) async {
    var user = _auth.currentUser;
    if (user != null) {
      DocumentReference orderRef = _db.collection('orders').doc();

      await orderRef.set({
        'userId': user.uid,
        'items': items,
        'totalPrice': totalPrice,
        'timestamp': FieldValue.serverTimestamp(),
      });

      // Optionally, you can clear the cart after placing the order
      DocumentReference cartRef = _db.collection('carts').doc(user.uid);
      await cartRef.collection('items').get().then((snapshot) {
        for (DocumentSnapshot ds in snapshot.docs) {
          ds.reference.delete();
        }
      });
    } else {
      throw Exception("No user is currently logged in.");
    }
  }
}


class OrderService2 {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> placeOrder(List<CartItem> items, double totalPrice) async {
    var user = _auth.currentUser;
    if (user != null) {
      DocumentReference orderRef = _db.collection('orders').doc();

      await orderRef.set({
        'userId': user.uid,
        'items': items.map((item) => item.toMap()).toList(),
        'totalPrice': totalPrice,
        'timestamp': FieldValue.serverTimestamp(),
      });

      // Optionally, you can clear the cart after placing the order
      DocumentReference cartRef = _db.collection('carts').doc(user.uid);
      await cartRef.collection('items').get().then((snapshot) {
        for (DocumentSnapshot ds in snapshot.docs) {
          ds.reference.delete();
        }
      });
    } else {
      throw Exception("No user is currently logged in.");
    }
  }
}
