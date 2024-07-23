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





// class HomeService {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   Future<Either<String, List<Map<String, dynamic>>>> fetchItems() async {
//     try {
//       // Reference to the "items" collection
//       CollectionReference collection = _firestore.collection('items');

//       // Get all documents from the collection
//       QuerySnapshot querySnapshot = await collection.get();

//       // Process and return the data as a list of maps
//       List<Map<String, dynamic>> items = [];
//       for (var doc in querySnapshot.docs) {
//         items.add(doc.data() as Map<String, dynamic>);
//       }
//       print(items);
//       return Right(items);
//     } catch (e) {
//       print('Error fetching items: $e');
//       return Left(e.toString()); // More specific error handling possible
//     }
//   }
// }

// Future<void> updateProducts({
//   required String name,
//   required String realPrice,
//   required String discountPrice,
//   required String imageUrl,
//   required bool isCitrus,
//   required bool isReadyToEat,
//   required bool isBeatTheHeat,
//   required bool isCheckThisOut,
//   required bool isEveryDayEssential,
//   required bool isSummerFruit,
//   required bool isDealofTheDay,
//   required bool isExoticFruit,
//   required bool isExoticVegetable,
//   required bool isFreshFruit,
//   required bool isFreshMangoes,
//   required bool isFreshVegetables,
//   required bool isLeafs_Herbs,
// }) async {
//   final FirebaseFirestore _db = FirebaseFirestore.instance;
//   DocumentReference userRef = _db.collection('items').doc();

//   return userRef.set({
//     'name': name,
//     'realPrice': realPrice,
//     'discountPrice': discountPrice,
//     'description': 'Fresh Item',
//     'imageUrl': imageUrl,
//     'offer': '20',
//     'isCitrus': isCitrus,
//     'isReadyToEat': isReadyToEat,
//     'isBeatTheHeat': isBeatTheHeat,
//     'isCheckThisOut': isCheckThisOut,
//     'isEveryDayEssential': isEveryDayEssential,
//     'isSummerFruit': isSummerFruit,
//     'isDealofTheDay': isDealofTheDay,
//     'isExoticFruit': isExoticFruit,
//     'isExoticVegetable': isExoticVegetable,
//     'isFreshFruit': isFreshFruit,
//     'isFreshMangoes': isFreshMangoes,
//     'isFreshVegetables': isFreshVegetables,
//     'isLeafs_Herbs': isLeafs_Herbs,
//   }, SetOptions(merge: true));
// }
