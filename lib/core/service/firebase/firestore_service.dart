import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Fetch all documents from a collection
  Future<List<Map<String, dynamic>>> getDocuments(String collectionPath) async {
    final collectionRef = _firestore.collection(collectionPath);
    final snapshot = await collectionRef.get();
    return snapshot.docs.map((doc) => doc.data() as Map<String, dynamic>).toList();
  }

  // Fetch a single document by ID
  Future<Map<String, dynamic>?> getDocumentById(String collectionPath, String documentId) async {
    final docRef = _firestore.collection(collectionPath).doc(documentId);
    final snapshot = await docRef.get();
    return snapshot.exists ? snapshot.data() as Map<String, dynamic> : null;
  }

  // Stream to listen for changes in a collection (real-time updates)
  Stream<List<Map<String, dynamic>>> streamCollection(String collectionPath) {
    final collectionRef = _firestore.collection(collectionPath);
    return collectionRef.snapshots().map((snapshot) =>
        snapshot.docs.map((doc) => doc.data() as Map<String, dynamic>).toList());
  }

  // Stream to listen for changes in a specific document (real-time updates)
  Stream<Map<String, dynamic>?> streamDocument(String collectionPath, String documentId) {
    final docRef = _firestore.collection(collectionPath).doc(documentId);
    return docRef.snapshots().map((snapshot) => snapshot.exists ? snapshot.data() as Map<String, dynamic> : null);
  }
}
