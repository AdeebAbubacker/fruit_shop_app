import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fruit_shop_app/core/service/auth/auth_service.dart';

class FetchHomeScreenApi extends StatelessWidget {
  const FetchHomeScreenApi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {
                  await AuthService(FirebaseAuth.instance).getUserData();
                },
                child: const Text("Call Api"))
          ],
        ),
      ),
    );
  }
}
