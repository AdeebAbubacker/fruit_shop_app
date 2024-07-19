import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> fetchData() async {
  try {
    // Reference to the Firestore collection 'adeeb'
    CollectionReference collection = FirebaseFirestore.instance.collection('Flash deal');

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
