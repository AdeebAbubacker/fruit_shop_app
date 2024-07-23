import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_shop_app/core/model/cart_item/cart_item.dart';
import 'package:fruit_shop_app/core/model/order/order.dart';

class OrderService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> placeOrder(List<CartItem> items, String totalPrice) async {
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

  Future<Either<String, List<OrderModel>>> fetchOrders() async {
    var user = _auth.currentUser;
    if (user != null) {
      try {
        QuerySnapshot snapshot = await _db
            .collection('orders')
            .where('userId', isEqualTo: user.uid)
            .orderBy('timestamp', descending: true)
            .get();

        final orders = snapshot.docs.map((doc) {
          return OrderModel.fromMap(doc.id, doc.data() as Map<String, dynamic>);
        }).toList();
        print('addddddddeebeee');
        print(orders[0]);
        return Right(orders);
      } catch (e) {
        print('aseeeeb ${e.toString()}');
        return Left("Error fetching orders: $e");
      }
    } else {
      print('aseeeeb');
      return Left("No user is currently logged in.");
    }
  }
}
