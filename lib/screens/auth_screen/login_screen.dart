import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_shop_app/core/constants/common.dart';
import 'package:fruit_shop_app/core/constants/text_styles.dart';
import 'package:fruit_shop_app/core/view_model/login/login_bloc.dart';
import 'package:fruit_shop_app/widgets/buttons.dart';
import 'package:fruit_shop_app/widgets/password_textfield.dart';
import 'package:fruit_shop_app/widgets/textfield.dart';

import 'package:jumping_dot/jumping_dot.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool showDots = false;
  final _passwordController = TextEditingController();
  final _emailcontroller = TextEditingController();
  final FocusNode emailfocusNode = FocusNode();
  final FocusNode passwordfocusNode = FocusNode();
  String? _emailErrorText;
  String? _passwordErrorText;
  bool _formSubmitted = false; // Add this boolean flag

  @override
  void initState() {
    super.initState();
    _emailcontroller.addListener(_onEmailChanged);
    _passwordController.addListener(_onPasswordChanged);
  }

  @override
  void dispose() {
    _emailcontroller.removeListener(_onEmailChanged);
    _passwordController.removeListener(_onPasswordChanged);
    super.dispose();
  }

  void _onEmailChanged() {
    if (_formSubmitted) {
      // Only validate if the form has been submitted at least once
      _validateEmail(_emailcontroller.text);
    }
  }

  void _validateEmail(String value) {
    if (value.isEmpty) {
      setState(() {
        _emailErrorText = 'Email is required';
      });
    } else if (!value.contains('@')) {
      setState(() {
        _emailErrorText = 'Invalid format';
      });
    } else {
      // Clear error if value becomes non-empty
      if (_emailErrorText != null) {
        setState(() {
          _emailErrorText = null;
        });
      }
    }
  }

  void _onPasswordChanged() {
    if (_formSubmitted) {
      // Only validate if the form has been submitted at least once
      _validatePassword(_passwordController.text);
    }
  }

  void _validatePassword(String value) {
    setState(() {
      if (value.isEmpty) {
        _passwordErrorText = 'Password is required';
      } else if (value.length < 8) {
        _passwordErrorText = 'Password must be at least 8 characters long';
      } else {
        _passwordErrorText = null;
      }
    });
  }

  void _submitForm() {
    setState(() {
      _formSubmitted =
          true; // Set form submitted to true when the button is clicked
      // Validate password field
      _validateEmail(_emailcontroller.text);
      _validatePassword(_passwordController.text);
    });

    if (_emailcontroller.text.isNotEmpty &&
        _passwordController.text.isNotEmpty) {
      setState(() {
        showDots = true;
      });
    }
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
        body: BlocConsumer<LoginBloc, LoginState>(
          listener: (context, state) {
            state.maybeMap(loginSuccess: (value) {
              setState(() { print('----------success');
                showDots = false;
              });
             
              //   return navigateToHomeCleared(context);
            }, loginFailure: (value) {
              
              setState(() {print('----------failure');
                showDots = false;
              });
              // showCustomToast(
              //   context,
              //   "Oops something went wrong!",
              //   MediaQuery.of(context).size.height * 0.9,
              // );
            }, orElse: () {
              // Handle other states or do nothing
            }, loading: (_) {
              print('----------loading');
            });
          },
          builder: (context, state) {
            return Center(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: devicePadding),
                  child: Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FractionallySizedBox(
                            widthFactor: 0.75, // Take full available width
                            child: Image.asset(
                              'assets/vegan.png',
                              fit: BoxFit
                                  .contain, // Maintain aspect ratio while fitting the image within the box
                              color: Colors.red,
                            ),
                          ),
                          SizedBox(height: perc20),
                          Text(
                            'Hello, Welcome back !',
                            style: TextStyles.bold24black24,
                          ),
                          SizedBox(height: perc20),
                          Text(
                            'Sign in to continue',
                            style: TextStyles.semibold16grey77,
                          ),
                          SizedBox(height: perc281),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Textfield(
                                focusNode: emailfocusNode,
                                errorText: _emailErrorText,
                                hintText: 'Enter Email',
                                textEditingController: _emailcontroller,
                              ),
                              SizedBox(height: elementPaddingVertical),
                              PassWordTextfield(
                                focusNode: passwordfocusNode,
                                errorText: _passwordErrorText,
                                hintText: 'Enter Password',
                                textEditingController: _passwordController,
                              ),
                              //SizedBox(height: 5),
                              TextButton(
                                onPressed: () {
                                  //   navigateToForgotPassword(context);
                                },
                                child: Wrap(
                                  // Wrap the child with IntrinsicWidth
                                  children: [
                                    Text(
                                      'Forgot your password?',
                                      style: TextStyles.medium16black00,
                                      textAlign: TextAlign.start,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 10),
                          ColoredButton(
                            onPressed: () {
                              final email = _emailcontroller.text;
                              final password = _passwordController.text;
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
                                "Don't have an account?  ",
                                style: TextStyles.rubikregular16grey77w400,
                              ),
                              InkWell(
                                onTap: () {
                                  //navigateToSignUp(context);
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
                          visible: showDots,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 30),
                            child: Container(
                              width: 120,
                              height: 40,
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(137, 212, 210, 210),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
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
            );
          },
        ),
      ),
    );
  }
}
