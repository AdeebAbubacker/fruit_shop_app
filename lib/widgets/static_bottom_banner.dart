import 'package:flutter/material.dart';

class StaticBottomBanner extends StatelessWidget {
  const StaticBottomBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        child:
            Image.asset('assets/static banner/static baner bottom.png'));
  }
}