import 'package:flutter/material.dart';
import 'package:fruit_shop_app/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

//----------------------------
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:fruit_shop_app/widgets/caroul_widget.dart';

// void main() {
//   runApp(
//     const MaterialApp(
//       home: CarouselWidget(
//         imgList: [
//           'https://via.placeholder.com/600x400/FF0000/FFFFFF?text=Image1',
//           'https://via.placeholder.com/600x400/00FF00/FFFFFF?text=Image2',
//           'https://via.placeholder.com/600x400/0000FF/FFFFFF?text=Image3',
//           'https://via.placeholder.com/600x400/FFFF00/FFFFFF?text=Image4',
//           'https://via.placeholder.com/600x400/FF00FF/FFFFFF?text=Image5',
//         ],
//       ),
//     ),
//   );
// }
