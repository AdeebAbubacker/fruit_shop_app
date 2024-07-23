import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruit_shop_app/core/model/cart_item/cart_item.dart';

class OrderModel {
  final String orderId;
  final String userId;
  final List<CartItem> items;
  final String totalPrice;
  final DateTime timestamp;

  OrderModel({
    required this.orderId,
    required this.userId,
    required this.items,
    required this.totalPrice,
    required this.timestamp,
  });

  factory OrderModel.fromMap(String orderId, Map<String, dynamic> data) {
    return OrderModel(
      orderId: orderId,
      userId: data['userId'],
      items: List<CartItem>.from(data['items'].map((item) => CartItem.fromMap(item))),
      totalPrice: data['totalPrice'],
      timestamp: (data['timestamp'] as Timestamp).toDate(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'items': items.map((item) => item.toMap()).toList(),
      'totalPrice': totalPrice,
      'timestamp': timestamp,
    };
  }
}
