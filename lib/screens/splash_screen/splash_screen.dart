import 'package:flutter/material.dart';
import 'package:fruit_shop_app/core/constants/common.dart';
import 'package:fruit_shop_app/core/constants/const.dart';
import 'package:fruit_shop_app/core/constants/text_styles.dart';
import 'package:fruit_shop_app/screens/auth_screen/login_screen.dart';
import 'package:fruit_shop_app/screens/main_screen/main_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return  SignInScreen();
          },
        ),
      );
    });
    double screenheight = screenHeight(context);
    double height44 = screenheight * 44 / FigmaConstants.figmaDeviceHeight;
    double height8 = screenheight * 8 / FigmaConstants.figmaDeviceHeight;

    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/vegan.png',
                  width: 180,
                )
              ],
            ),
            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  Text(
                    "Version 1.0.14",
                    style: TextStyles.rubikregular14black3B,
                  ),
                  SizedBox(height: height8),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      "Copyright @ 2024 Vegan",
                      style: TextStyles.rubikregular14grey66,
                    ),
                  ),
                  SizedBox(
                    height: height44,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
