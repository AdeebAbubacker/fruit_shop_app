import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_shop_app/core/constants/text_styles.dart';
import 'package:fruit_shop_app/core/routes/app_route.dart';
import 'package:fruit_shop_app/core/view_model/login/login_bloc.dart';
import 'package:fruit_shop_app/widgets/buttons.dart';
import 'package:fruit_shop_app/widgets/textfield.dart';
import 'package:jumping_dot/jumping_dot.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final FocusNode emailfocusNode = FocusNode();
  final FocusNode passwordfocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        emailfocusNode.unfocus();
        passwordfocusNode.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {
            state.maybeMap(
              loginSuccess: (value) {
                print('success');
                print('----------${value}');
                // Navigate to home screen
                return navigateToMainScreen(context);
              },
              loginFailure: (value) {
                print('----------${value}');
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
              padding: EdgeInsets.symmetric(horizontal: 20),
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
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Hello, Welcome back!',
                        style: TextStyles.bold24black24,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Sign in to continue',
                        style: TextStyles.semibold16grey77,
                      ),
                      SizedBox(height: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFieldWidget(
                            focusNode: emailfocusNode,
                            controller: emailcontroller,
                            hintText: 'Email',
                          ),
                          SizedBox(height: 10),
                          TextFieldWidget(
                            focusNode: passwordfocusNode,
                            controller: passwordcontroller,
                            hintText: 'Password',
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
                          final email = emailcontroller.text;
                          final password = passwordcontroller.text;
                          context.read<LoginBloc>().add(
                              LoginEvent.loginRequested(
                                  email: email, password: password));
                        },
                        text: 'Sign In',
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account?",
                            style: TextStyles.rubikregular16grey77w400,
                          ),
                          InkWell(
                            onTap: () {
                              navigateToRegister(context);
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
                      visible:
                          false, // Change this to true to show the loading indicator
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
                            color: Color.fromARGB(210, 109, 255, 143),
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
