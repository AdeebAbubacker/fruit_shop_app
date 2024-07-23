import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_shop_app/core/model/cart_item/cart_item.dart';


class CartService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final FirebaseAuth auth = FirebaseAuth.instance;

Future<Either<String, bool>> updateCartItem({
  required String itemId,
  required int quantity,
  String? name,
  String? imgUrl,
  String? price,
}) async {
  var user = auth.currentUser;
  if (user != null) {
    DocumentReference cartRef = _db.collection('carts').doc(user.uid);
    DocumentReference itemRef = cartRef.collection('items').doc(itemId);

    try {
      await _db.runTransaction((transaction) async {
        DocumentSnapshot snapshot = await transaction.get(itemRef);

        if (snapshot.exists) {
          // Directly set the quantity to the new value
          transaction.update(itemRef, {
            'quantity': quantity,
            if (name != null) 'name': name,
            if (imgUrl != null) 'imgUrl': imgUrl,
            if (price != null) 'price': price,
          });
        } else {
          // Item doesn't exist, create it with the new quantity
          transaction.set(itemRef, {
            'quantity': quantity,
            if (name != null) 'name': name,
            if (imgUrl != null) 'imgUrl': imgUrl,
            if (price != null) 'price': price,
          });
        }
      });
      print(true);
      return Right(true); // Success
    } catch (e) {
      print(e);
      print('Error updating cart item: $e');
      return Left('Error updating cart item: $e'); // Failure
    }
  } else {
    print(false);
    return Left('User not logged in'); // Failure
  }
}
 Future<Either<String, bool>> addToCart({
    required String itemId,
    required int quantity,
    required String name,
    required String imgUrl,
    required String price,
  }) async {
    var user = auth.currentUser;
    if (user != null) {
      DocumentReference cartRef = _db.collection('carts').doc(user.uid);
      DocumentReference itemRef = cartRef.collection('items').doc(itemId);

      try {
        await _db.runTransaction((transaction) async {
          DocumentSnapshot snapshot = await transaction.get(itemRef);

          if (!snapshot.exists) {
            transaction.set(itemRef, {
              'quantity': quantity,
              'name': name,
              'imgUrl': imgUrl,
              'price': price,
            });
          } else {
            int newQuantity = snapshot['quantity'] + quantity;
            transaction.update(itemRef, {
              'quantity': newQuantity,
              'name': name,
              'imgUrl': imgUrl,
              'price': price,
            });
          }
        });
        print(true);
        return Right(true); // Success
      } catch (e) {
        print(e);
        print('Error adding to cart: $e');
        return Left('Error adding to cart: $e'); // Failure
      }
    } else {
      print(false);
      return Left('User not logged in'); // Failure
    }
  }

  Future<Either<bool, List<CartItem>>> getCartItems() async {
    var user = auth.currentUser;

    try {
      if (user != null) {
        QuerySnapshot snapshot = await _db
            .collection('carts')
            .doc(user.uid)
            .collection('items')
            .get();

        final items = snapshot.docs
            .map((doc) => CartItem.fromMap(doc.data() as Map<String, dynamic>))
            .toList();

        // Print the items to verify
        items.forEach((item) => print(item.toMap()));

        return Right(items);
      } else {
        // User is not logged in
        return Left(false);
      }
    } catch (e) {
      // Error occurred
      print('Error fetching cart items: $e');
      return Left(false);
    }
  }
}
