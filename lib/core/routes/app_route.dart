import 'package:flutter/material.dart';



void navigateToRegister(
  BuildContext context,
) =>
    Navigator.of(context).pushNamed('/register');

void navigateToHomeCleared(BuildContext context) =>
    Navigator.of(context).pushNamedAndRemoveUntil(
      '/mainScreen',
      (Route route) => false,
    );    


// void navigateToSiginCleared(BuildContext context) =>
//     Navigator.of(context).pushNamedAndRemoveUntil(
//       '/sigin',
//       (Route route) => false,
//     );
