import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_shop_app/core/constants/common.dart';
import 'package:fruit_shop_app/core/constants/text_styles.dart';
import 'package:fruit_shop_app/core/routes/app_route.dart';
import 'package:fruit_shop_app/core/view_model/login/login_bloc.dart';
import 'package:fruit_shop_app/screens/main_screen/main_screen.dart';
import 'package:fruit_shop_app/widgets/buttons.dart';
import 'package:fruit_shop_app/widgets/password_textfield.dart';
import 'package:fruit_shop_app/widgets/textfield.dart';
import 'package:jumping_dot/jumping_dot.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  @override
  void dispose() {
    passwordController.dispose();
    emailController.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double devicePadding = outerPadding(context);
    double elementPaddingVertical = elemPaddingVertical(context);
    double perc20 = screenHeight * 0.020;
    double perc187 = screenHeight * 0.0187;
    double perc281 = screenHeight * 0.0281;

    return GestureDetector(
      onTap: () {
        emailFocusNode.unfocus();
        passwordFocusNode.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {
            state.maybeMap(
              loginSuccess: (value) {
                // Navigate to home screen
              },
              loginFailure: (value) {
                // Show error message
              },
              loading: (_) {
                print('----------loading');
              },
              orElse: () {},
            );
          },
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: devicePadding),
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FractionallySizedBox(
                        widthFactor: 0.75,
                        child: Image.asset(
                          'assets/vegan.png',
                          fit: BoxFit.contain,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(height: perc20),
                      Text(
                        'Hello, Welcome back!',
                        style: TextStyles.bold24black24,
                      ),
                      SizedBox(height: perc20),
                      Text(
                        'Sign in to continue',
                        style: TextStyles.semibold16grey77,
                      ),
                      SizedBox(height: perc281),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Textfield(
                            focusNode: emailFocusNode,
                            errorText: null,
                            hintText: 'Enter Email',
                            textEditingController: emailController,
                            textstyle: TextStyles.bold11black24,
                          ),
                          SizedBox(height: elementPaddingVertical),
                          PassWordTextfield(
                            focusNode: passwordFocusNode,
                            errorText: null,
                            hintText: 'Enter Password',
                            textEditingController: passwordController,
                          ),
                          TextButton(
                            onPressed: () {
                              // Navigate to forgot password screen
                            },
                            child: Text(
                              'Forgot your password?',
                              style: TextStyles.medium16black00,
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      ColoredButton(
                        onPressed: () {
                          final email = emailController.text;
                          final password = passwordController.text;
                          context.read<LoginBloc>().add(
                              LoginEvent.loginRequested(
                                  email: email, password: password));
                        },
                        text: 'Sign In',
                      ),
                      SizedBox(height: perc187),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account?",
                            style: TextStyles.rubikregular16grey77w400,
                          ),
                          InkWell(
                            onTap: () {
                              // Navigate to register screen
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyles.medium16black3B,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Visibility(
                      visible: false, // Change this to true to show the loading indicator
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: Container(
                          width: 120,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(137, 212, 210, 210),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          child: JumpingDots(
                            color: const Color.fromARGB(210, 255, 109, 111),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
