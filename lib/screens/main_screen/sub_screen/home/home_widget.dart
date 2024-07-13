import 'package:flutter/material.dart';
import 'package:fruit_shop_app/widgets/caroul_widget.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 10),
            CarouselWidget(
              imgList: [
                'https://via.placeholder.com/600x400/FF0000/FFFFFF?text=Image1',
                'https://via.placeholder.com/600x400/00FF00/FFFFFF?text=Image2',
                'https://via.placeholder.com/600x400/0000FF/FFFFFF?text=Image3',
                'https://via.placeholder.com/600x400/FFFF00/FFFFFF?text=Image4',
                'https://via.placeholder.com/600x400/FF00FF/FFFFFF?text=Image5',
              ],
            ),
          ],
        ),
      ),
    );
  }
}
