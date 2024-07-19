import 'package:flutter/material.dart';
import 'package:fruit_shop_app/core/constants/const.dart';
import 'package:fruit_shop_app/core/constants/text_styles.dart';

import '../core/constants/common.dart';

class ColoredButton extends StatelessWidget {
  final bool isactive;
  final VoidCallback? onPressed;
  final String text;
  const ColoredButton({
    Key? key,
    required this.text,
    this.isactive = true,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenwidth = screenWidth(context);
    final buttonwidth = screenwidth * 335 / FigmaConstants.figmaDeviceWidth;

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: SizedBox(
        width: buttonwidth,
        height: 56,
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 84, 205, 88),
                    Colors.green,
                  ]),
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(5),
                onTap: onPressed,
                child: Center(
                  // Centering text vertically
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: TextStyles.rubikmedium16whiteFF,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
