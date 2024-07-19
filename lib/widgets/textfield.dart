import 'package:flutter/material.dart';
import 'package:fruit_shop_app/core/constants/text_styles.dart';


class TextFieldWidget extends StatelessWidget {
  final FocusNode focusNode;
  final TextEditingController controller;
  final String hintText;
  const TextFieldWidget({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(9)),
        ),
        child: TextField(
          focusNode: focusNode,
          controller: controller,
          style: TextStyles.rubikregular16black24w400,
          decoration:  InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            hintText: hintText,
            border: const OutlineInputBorder(
              borderSide: BorderSide(
                width: 4,
                color: Colors.red,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(9),
              ),
            ),
          ),
        ));
  }
}
