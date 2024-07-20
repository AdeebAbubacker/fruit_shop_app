import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> fetchData() async {
  try {
    // Reference to the Firestore collection 'adeeb'
    CollectionReference collection =
        FirebaseFirestore.instance.collection('items');

    // Get the data from the collection
    QuerySnapshot querySnapshot = await collection.get();

    // Print each document in the collection
    for (var doc in querySnapshot.docs) {
      print(doc.data());
    }
  } catch (e) {
    print('Error fetching data: $e');
  }
}

Future<void> updateProducts({
  required String name,
  required String realPrice,
  required String discountPrice,
  required String imageUrl,
}) async {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  DocumentReference userRef = _db.collection('items').doc();

  return userRef.set({
    'name': name,
    'realPrice': realPrice,
    'discountPrice': discountPrice,
    'description': 'Fresh Item',
    'imageUrl': imageUrl,
    'offer': '20',
    'isCitrus': false,
    'isReadyToEat': false,
    'isBeatTheHeat': false,
    'isCheckThisOut': false,
    'isEveryDayEssential': false,
    'isSummerFruit': false,
    'isDealofTheDay': false,
    'isExoticFruit': false,
    'isExoticVegetable': false,
    'isFreshFruit': false,
    'isFreshMangoes': false,
    'isFreshVegetables': false,
    'isLeafs_Herbs': false,
  }, SetOptions(merge: true));
}

class HomeScreenService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<List<Map<String, dynamic>>> getItems() async {
    QuerySnapshot snapshot = await _db.collection('items').get();
    return snapshot.docs
        .map((doc) => doc.data() as Map<String, dynamic>)
        .toList();
  }
}
