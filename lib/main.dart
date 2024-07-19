import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fruit_shop_app/core/service/auth/auth_service.dart';
import 'package:fruit_shop_app/core/view_model/login/login_bloc.dart';
import 'package:fruit_shop_app/core/view_model/regsiter/register_bloc.dart';
import 'package:fruit_shop_app/screens/auth_screen/login_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fruit_shop_app/screens/auth_screen/regsiter_screen.dart';
import 'package:fruit_shop_app/screens/main_screen/main_screen.dart';
import 'package:fruit_shop_app/screens/splash_screen/splash_screen.dart';
import 'package:fruit_shop_app/testing/testing_screen.dart';

import 'firebase_options.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   runApp(const MyApp());
// }

// //----------------------------
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(
//           create: (context) => LoginBloc(AuthService(FirebaseAuth.instance)),
//         ),
//         BlocProvider(
//           create: (context) => RegisterBloc(AuthService(FirebaseAuth.instance)),
//         ),
//       ],
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           useMaterial3: false,
//         ),
//         initialRoute: '/',
//         routes: {
//           '/': (context) => const SplashScreen(),
//           '/sigin': (context) => SignInScreen(),
//           '/register': (context) => const RegistrationScreen(),
//           '/mainScreen': (context) => MainScreen(),
//         },
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'firebase_options.dart';

bool shouldUseFirestoreEmulator = false;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  FirebaseFirestore.instance.settings = const Settings(
    persistenceEnabled: true,
  );
  if (shouldUseFirestoreEmulator) {
    FirebaseFirestore.instance.useFirestoreEmulator('localhost', 8080);
  }

  runApp(FirestoreExampleApp());
}

class FirestoreExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firestore Example App',
      theme: ThemeData.dark(),
      home: const Scaffold(
        body: Center(child: FetchDataButton()),
      ),
    );
  }
}

class FetchDataButton extends StatelessWidget {
  const FetchDataButton({Key? key}) : super(key: key);

  Future<void> fetchData() async {
    try {
      // Reference to the Firestore collection 'Flash deal'
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

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        fetchData();
      },
      child: Text('Fetch Data from Flash deal'),
    );
  }
}

//--------