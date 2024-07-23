import 'package:hive_flutter/hive_flutter.dart';
part 'user_adapter.g.dart';

@HiveType(typeId: 1)
class UserDB {
  @HiveField(0)
  String name;
  @HiveField(1)
  String email;

  UserDB({
    this.name = '',
    this.email = '',
  });

  factory UserDB.fromJson(Map<String, dynamic> json) {
    return UserDB(
      name: json['name'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['email'] = email;
    return data;
  }
}