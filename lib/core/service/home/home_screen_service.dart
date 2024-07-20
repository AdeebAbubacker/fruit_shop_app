import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> fetchData() async {
  try {
    // Reference to the Firestore collection 'adeeb'
    CollectionReference collection =
        FirebaseFirestore.instance.collection('Flash deal');

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
  required String price,
  required String description,
  required String imageUrl,
  required String category,
}) async {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  DocumentReference userRef = _db.collection('Flash deal').doc();

  return userRef.set({
    'name': name,
    'price': price,
    'description': description,
    'imageUrl': imageUrl,
    'category': category
  }, SetOptions(merge: true));
}



class HomeScreenService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<List<Map<String, dynamic>>> getItems() async {
    QuerySnapshot snapshot = await _db.collection('Flash deal').get();
    return snapshot.docs.map((doc) => doc.data() as Map<String, dynamic>).toList();
  }
}
