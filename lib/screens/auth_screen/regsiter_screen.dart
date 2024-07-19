import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_shop_app/core/constants/common.dart';
import 'package:fruit_shop_app/core/constants/text_styles.dart';
import 'package:fruit_shop_app/core/view_model/regsiter/register_bloc.dart';
import 'package:fruit_shop_app/widgets/buttons.dart';
import 'package:fruit_shop_app/widgets/textfield.dart';
import 'package:jumping_dot/jumping_dot.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final FocusNode emailfocusNode = FocusNode();
  final FocusNode passwordfocusNode = FocusNode();

  @override
  void dispose() {
    passwordcontroller.dispose();
    emailcontroller.dispose();
    emailfocusNode.dispose();
    passwordfocusNode.dispose();
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
        emailfocusNode.unfocus();
        passwordfocusNode.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: BlocListener<RegisterBloc, RegisterState>(
          listener: (context, state) {
            state.maybeMap(
              registerSuccess: (value) {
                // Navigate to home screen
              },
              registerFailure: (value) {
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
                          TextFieldWidget(
                            focusNode: emailfocusNode,
                            controller: emailcontroller,
                          ),
                          SizedBox(height: elementPaddingVertical),
                          TextFieldWidget(
                            focusNode: passwordfocusNode,
                            controller: passwordcontroller,
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
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      ColoredButton(
                        onPressed: () {
                          final email = emailcontroller.text;
                          final password = passwordcontroller.text;
                          context.read<RegisterBloc>().add(
                              RegisterEvent.registerRequested(
                                  email: email, password: password));
                        },
                        text: 'Sign Up',
                      ),
                      SizedBox(height: perc187),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Have an account? ",
                            style: TextStyles.rubikregular16grey77w400,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              "Sign In",
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
