import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class CartService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> addToCart(String itemId, int quantity) async {
    var user = _auth.currentUser;
    if (user != null) {
      DocumentReference cartRef = _db.collection('carts').doc(user.uid);
      DocumentReference itemRef = cartRef.collection('items').doc(itemId);

      await _db.runTransaction((transaction) async {
        DocumentSnapshot snapshot = await transaction.get(itemRef);

        if (!snapshot.exists) {
          transaction.set(itemRef, {
            'quantity': quantity,
            'itemDetails': _db.collection('items').doc(itemId),
          });
        } else {
          int newQuantity = snapshot['quantity'] + quantity;
          transaction.update(itemRef, {'quantity': newQuantity});
        }
      });
    }
  }
}
