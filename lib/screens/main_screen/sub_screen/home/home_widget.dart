import 'package:flutter/material.dart';
import 'package:fruit_shop_app/core/constants/text_styles.dart';
import 'package:fruit_shop_app/widgets/caroul_widget.dart';
import 'package:fruit_shop_app/widgets/home_list_horizontal.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            const CarouselWidget(
              imgList: [
                'assets/slider/cashback.png',
                'assets/slider/coconut.png',
                'assets/slider/farmfresh.png',
                'assets/slider/mango.png',
                'assets/slider/monsoon.png'
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Image.asset(
                  'assets/animations/icons8-commercial.gif',
                  width: 28,
                ),
                const SizedBox(width: 5),
                Text(
                  "Flash Deal - Lowest Price guaranteed",
                  style: TextStyles.rubik14black33,
                ),
              ],
            ),
            const SizedBox(height: 5),
            const HomeListHorizontalItem(),
            const SizedBox(height: 20),
            Container(
              width:
                  double.infinity, // Fixed width to enable horizontal scrolling
              height: 160,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 149, 237, 155),
                  borderRadius: BorderRadius.circular(25)),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Image.asset(
                  'assets/animations/icons8-commercial.gif',
                  width: 28,
                ),
                const SizedBox(width: 5),
                Text(
                  "Deal of the day",
                  style: TextStyles.rubik14black33,
                ),
              ],
            ),
            const SizedBox(height: 5),
            const HomeListHorizontalItem(),
            const SizedBox(height: 20),
            const SizedBox(height: 20),
            Row(
              children: [
                Image.asset(
                  'assets/animations/icons8-commercial.gif',
                  width: 28,
                ),
                const SizedBox(width: 5),
                Text(
                  "Most favourite",
                  style: TextStyles.rubik14black33,
                ),
              ],
            ),
            const SizedBox(height: 5),
            const HomeListHorizontalItem(),
            const SizedBox(height: 20),
            Container(
              width:
                  double.infinity, // Fixed width to enable horizontal scrolling
              height: 160,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 149, 237, 155),
                  borderRadius: BorderRadius.circular(25)),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Image.asset(
                  'assets/animations/icons8-commercial.gif',
                  width: 28,
                ),
                const SizedBox(width: 5),
                Text(
                  "Summer land",
                  style: TextStyles.rubik14black33,
                ),
              ],
            ),
            const SizedBox(height: 5),
            const HomeListHorizontalItem(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
