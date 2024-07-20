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
import 'package:fruit_shop_app/testing/testing_cart.dart';
import 'package:fruit_shop_app/testing/testing_item.dart';
import 'package:fruit_shop_app/testing/testing_order.dart';
import 'package:fruit_shop_app/testing/testing_screen.dart';
import 'package:fruit_shop_app/testing/testing_vieworder.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

//----------------------------
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(AuthService(FirebaseAuth.instance)),
        ),
        BlocProvider(
          create: (context) => RegisterBloc(AuthService(FirebaseAuth.instance)),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: false,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashScreen(),
          '/sigin': (context) => SignInScreen(),
        '/register': (context) => RegistrationScreen(), // Pass the actual item map
        '/mainscreen': (context) => MainScreen(),
         
        },
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// // import 'screens/home_page.dart';
// // import 'screens/item_screen.dart';
// // import 'screens/cart_screen.dart';
// // import 'screens/order_screen.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'E-commerce App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       initialRoute: '/',
//       routes: {
//         '/': (context) => SignInScreen(),
//         '/item': (context) => ItemScreen(), // Pass the actual item map
//         '/cart': (context) => CartScreen(),
//         '/order': (context) => OrderScreen(),
//       },
//     );
//   }
// }
