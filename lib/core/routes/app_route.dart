import 'package:flutter/material.dart';

void navigateToSiginIn(
  BuildContext context,
) =>
    Navigator.of(context).pushReplacementNamed('/siginin');

void navigateToRegister(
  BuildContext context,
) =>
    Navigator.of(context).pushNamed('/register');

void navigateToMainScreen(BuildContext context) {
  Navigator.of(context).pushNamed(
    '/mainscreen',
  );
}
