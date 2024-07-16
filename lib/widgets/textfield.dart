import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:fruit_shop_app/core/constants/common.dart';
import 'package:fruit_shop_app/core/constants/const.dart';


class Textfield extends StatelessWidget {
  final FocusNode focusNode;
  final String hintText;
  final String? errorText;
  final TextEditingController textEditingController;
  final bool enabled;
  final TextStyle textstyle;
  final bool isSpecialCharAllowed;
  const Textfield({
    super.key,
    required this.hintText,
    required this.textEditingController,
    required this.focusNode,
    required this.textstyle,
    this.errorText,
    this.enabled = true,
    this.isSpecialCharAllowed = true,
  });

  @override
  Widget build(BuildContext context) {
    double elempaddingHorizontal = elemPaddingHorizontal(context);
    double elempaddingVertical = elemGapVertical(context);
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: ColorConstants.greyF7,
        borderRadius: BorderRadius.all(Radius.circular(9)),
      ),
      child: TextField(
        focusNode: focusNode,
        style: textstyle,
        enabled: enabled,
        controller: textEditingController,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
              horizontal: elempaddingHorizontal, vertical: elempaddingVertical),
          hintText: hintText,
          errorText: errorText,
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 4,
              color: Colors.red,
            ),
            borderRadius: BorderRadius.all(Radius.circular(9)),
          ),
        ),
        inputFormatters: isSpecialCharAllowed
            ? null
            : [
                FilteringTextInputFormatter.allow(RegExp(
                    r'[a-zA-Z0-9\s]')), // Allow only letters, numbers, and spaces
              ],
      ),
    );
  }
}
