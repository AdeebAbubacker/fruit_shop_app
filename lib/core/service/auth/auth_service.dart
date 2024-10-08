import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_shop_app/core/model/user/user_model.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  AuthService(this._firebaseAuth);

  Future<Either<String, User?>> login(String email, String password) async {
    try {
      UserCredential userCredential =
          await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      User? user = userCredential.user;
      if (user != null) {
        await _updateUserData(user);
      }

      return Right(userCredential.user);
    } catch (e) {
      return Left(e.toString());
    }
  }

  Future<Either<String, User?>> register(
      String email, String password, String name) async {
    try {
      UserCredential userCredential =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      User? user = userCredential.user;
      if (user != null) {
        await _updateUserData(user, name: name);
      }
      return Right(userCredential.user);
    } catch (e) {
      return Left(e.toString());
    }
  }

  Future<void> _updateUserData(User user, {String? name}) async {
    DocumentReference userRef = _db.collection('users').doc(user.uid);

    return userRef.set({
      'uid': user.uid,
      'email': user.email,
      'name': name ?? user.displayName ?? 'Anonymous',
      'lastSignIn': FieldValue.serverTimestamp(),
    }, SetOptions(merge: true));
  }

  Either<bool, bool> isUserSignedIn() {
    User? currentUser = _firebaseAuth.currentUser;
    if (currentUser != null) {
      return const Right(true);
    } else {
      return const Left(false);
    }
  }

  Future<Either<bool, UserModel>> getUserData() async {
    try {
      User? currentUser = _firebaseAuth.currentUser;
      if (currentUser != null) {
        DocumentSnapshot userDoc =
            await _db.collection('users').doc(currentUser.uid).get();
        if (userDoc.exists) {
          UserModel userModel =
              UserModel.fromMap(userDoc.data() as Map<String, dynamic>);

          return Right(userModel);
        } else {
          return const Left(false);
        }
      } else {
        return const Left(false);
      }
    } catch (e) {
      return const Left(false);
    }
  }

  Future<Either<bool, bool>> logout() async {
    try {
      await _firebaseAuth.signOut();
      return const Right(true);
    } catch (e) {
      return const Left(false);
    }
  }
}
