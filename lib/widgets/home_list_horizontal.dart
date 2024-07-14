import 'package:flutter/material.dart';

class HomeListHorizontalItem extends StatelessWidget {
  const HomeListHorizontalItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220, // Give a fixed height
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        padding: EdgeInsets.symmetric(horizontal: 10),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Container(
              width: 150,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 194, 193, 193),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          );
        },
      ),
    );
  }
}
