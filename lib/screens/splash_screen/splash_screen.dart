import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_shop_app/core/constants/common.dart';
import 'package:fruit_shop_app/core/constants/const.dart';
import 'package:fruit_shop_app/core/constants/text_styles.dart';
import 'package:fruit_shop_app/core/routes/app_route.dart';
import 'package:fruit_shop_app/core/view_model/checklogin/check_login_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_){
       context.read<CheckLoginBloc>().add(CheckLoginEvent.isLoggedIn());
    });
    double screenheight = screenHeight(context);
    double height44 = screenheight * 44 / FigmaConstants.figmaDeviceHeight;
    double height8 = screenheight * 8 / FigmaConstants.figmaDeviceHeight;

    return Scaffold(
      body: BlocListener<CheckLoginBloc, CheckLoginState>(
        listener: (context, state) {
          state.maybeWhen(
            LogedIn: (user) {
              navigateToMainScreen(context);
            },
            NotLogedIn: (error) {
              Future.delayed(const Duration(seconds: 4), () {
                navigateToSiginIn(context);
              });
            },
            orElse: () {},
          );
        },
        child: Center(
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
      ),
    );
  }
}
