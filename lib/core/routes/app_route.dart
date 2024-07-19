import 'package:flutter/material.dart';

void navigateToSiginIn(
  BuildContext context,
) =>
    Navigator.of(context).pushReplacementNamed('/sigin');

void navigateToRegister(
  BuildContext context,
) =>
    Navigator.of(context).pushNamed('/register');    
