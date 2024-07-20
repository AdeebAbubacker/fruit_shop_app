import 'package:flutter/material.dart';

class StaticBanner extends StatelessWidget {
  final String image;
  const StaticBanner({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        width: MediaQuery.of(context).size.width - 30,
        height: 160,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 149, 237, 155),
          borderRadius: BorderRadius.circular(25),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image.asset(
            image,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
