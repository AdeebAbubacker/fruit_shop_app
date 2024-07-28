import 'package:flutter/material.dart';
import 'package:fruit_shop_app/core/constants/text_styles.dart';
import 'package:fruit_shop_app/widgets/caroul_widget.dart';
import 'package:fruit_shop_app/widgets/home_list_deal_today.dart';
import 'package:fruit_shop_app/widgets/home_list_exotic_fruit.dart';
import 'package:fruit_shop_app/widgets/home_list_lowest_price.dart';
import 'package:fruit_shop_app/widgets/static_banner.dart';
import 'package:fruit_shop_app/widgets/static_bottom_banner.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Padding(
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
                      "items - Lowest Price guaranteed",
                      style: TextStyles.rubik15black33,
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                 HomeListLowestPrice(),
                const SizedBox(height: 20),
                StaticBanner(
                  image: 'assets/static banner/static banner 1.png',
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
                      style: TextStyles.rubik15black33,
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                 HomeListDealToday(),
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
                      style: TextStyles.rubik15black33,
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                 HomeListExoticfruit(),
                const SizedBox(height: 20),
                StaticBanner(
                  image: 'assets/static banner/static banner 1.png',
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
                      style: TextStyles.rubik15black33,
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                 HomeListExoticfruit(),
                const SizedBox(height: 20),
              ],
            ),
          ),
          SizedBox(height: 220),
          StaticBottomBanner()
        ],
      ),
    );
  }
}
