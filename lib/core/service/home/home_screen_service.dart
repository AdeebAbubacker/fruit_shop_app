import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:fruit_shop_app/core/model/home_item/home_item.dart';

class HomeScreenService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<List<Map<String, dynamic>>> getItems() async {
    QuerySnapshot snapshot = await _db.collection('items').get();
    return snapshot.docs
        .map((doc) => doc.data() as Map<String, dynamic>)
        .toList();
  }

  Future<Either<bool, List<Item>>> getEssentialItems() async {
    try {
      QuerySnapshot snapshot = await _db
          .collection('items')
          .where('isEveryDayEssential', isEqualTo: true)
          .get();

      List<Item> items = snapshot.docs
          .map((doc) => Item.fromMap(doc.data() as Map<String, dynamic>))
          .toList();

      print(items);
      return Right(items);
    } catch (e) {
      print('Error fetching essential items: $e');
      return const Left(false);
    }
  }

  Future<Either<bool, List<Item>>> getDealofTheDay() async {
    try {
      QuerySnapshot snapshot = await _db
          .collection('items')
          .where('isDealofTheDay', isEqualTo: true)
          .get();

      List<Item> items = snapshot.docs
          .map((doc) => Item.fromMap(doc.data() as Map<String, dynamic>))
          .toList();

      print(items);
      return Right(items);
    } catch (e) {
      print('Error fetching essential items: $e');
      return const Left(false);
    }
  }

  Future<Either<bool, List<Item>>> getCheckThisItem() async {
    try {
      QuerySnapshot snapshot = await _db
          .collection('items')
          .where('isCheckThisOut', isEqualTo: true)
          .get();

      List<Item> items = snapshot.docs
          .map((doc) => Item.fromMap(doc.data() as Map<String, dynamic>))
          .toList();

      print(items);
      return Right(items);
    } catch (e) {
      print('Error fetching essential items: $e');
      return const Left(false);
    }
  }

  Future<Either<bool, List<Item>>> getExoticfruit() async {
    try {
      QuerySnapshot snapshot = await _db
          .collection('items')
          .where('isExoticFruit', isEqualTo: true)
          .get();

      List<Item> items = snapshot.docs
          .map((doc) => Item.fromMap(doc.data() as Map<String, dynamic>))
          .toList();

      print(items);
      return Right(items);
    } catch (e) {
      print('Error fetching essential items: $e');
      return const Left(false);
    }
  }

   Future<Either<bool, List<Item>>> getExoticVegetable() async {
    try {
      QuerySnapshot snapshot = await _db
          .collection('items')
          .where('isExoticVegetable', isEqualTo: true)
          .get();

      List<Item> items = snapshot.docs
          .map((doc) => Item.fromMap(doc.data() as Map<String, dynamic>))
          .toList();

      print(items);
      return Right(items);
    } catch (e) {
      print('Error fetching essential items: $e');
      return const Left(false);
    }
  }

 Future<Either<bool, List<Item>>> getFreshMangoes() async {
    try {
      QuerySnapshot snapshot = await _db
          .collection('items')
          .where('isFreshMangoes', isEqualTo: true)
          .get();

      List<Item> items = snapshot.docs
          .map((doc) => Item.fromMap(doc.data() as Map<String, dynamic>))
          .toList();

      print(items);
      return Right(items);
    } catch (e) {
      print('Error fetching essential items: $e');
      return const Left(false);
    }
  }

 Future<Either<bool, List<Item>>> getFreshVegetables() async {
    try {
      QuerySnapshot snapshot = await _db
          .collection('items')
          .where('isFreshVegetables', isEqualTo: true)
          .get();

      List<Item> items = snapshot.docs
          .map((doc) => Item.fromMap(doc.data() as Map<String, dynamic>))
          .toList();

      print(items);
      return Right(items);
    } catch (e) {
      print('Error fetching essential items: $e');
      return const Left(false);
    }
  }

 Future<Either<bool, List<Item>>> getFreshFruit() async {
    try {
      QuerySnapshot snapshot = await _db
          .collection('items')
          .where('isFreshFruit', isEqualTo: true)
          .get();

      List<Item> items = snapshot.docs
          .map((doc) => Item.fromMap(doc.data() as Map<String, dynamic>))
          .toList();

      print(items);
      return Right(items);
    } catch (e) {
      print('Error fetching essential items: $e');
      return const Left(false);
    }
  }

Future<Either<bool, List<Item>>> getLeafsandHerbs() async {
    try {
      QuerySnapshot snapshot = await _db
          .collection('items')
          .where('isLeafs_Herbs', isEqualTo: true)
          .get();

      List<Item> items = snapshot.docs
          .map((doc) => Item.fromMap(doc.data() as Map<String, dynamic>))
          .toList();

      print(items);
      return Right(items);
    } catch (e) {
      print('Error fetching essential items: $e');
      return const Left(false);
    }
  }

Future<Either<bool, List<Item>>> getEveryDayEssential() async {
    try {
      QuerySnapshot snapshot = await _db
          .collection('items')
          .where('isEveryDayEssential', isEqualTo: true)
          .get();

      List<Item> items = snapshot.docs
          .map((doc) => Item.fromMap(doc.data() as Map<String, dynamic>))
          .toList();

      print(items);
      return Right(items);
    } catch (e) {
      print('Error fetching essential items: $e');
      return const Left(false);
    }
  }
}


