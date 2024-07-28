import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_shop_app/core/constants/text_styles.dart';

import 'package:fruit_shop_app/core/view_model/viewOrders/view_orders_bloc.dart';


class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  static const List<CategoryModel> model = [
    CategoryModel(
        imgAsset: 'assets/categories/Exotic Fruit.png', title: 'Exotic Fruit'),
    CategoryModel(
        imgAsset: 'assets/categories/Exotic Vegetable.png',
        title: 'Exotic Vegetable'),
    CategoryModel(
        imgAsset: 'assets/categories/Fresh Mangoes.png',
        title: 'Fresh Mangoes'),
    CategoryModel(
        imgAsset: 'assets/categories/Fresh Vegetables.png',
        title: 'Fresh Vegetable'),
    CategoryModel(
        imgAsset: 'assets/categories/Frresh Fruits.png', title: 'Fresh Fruit'),
    CategoryModel(
        imgAsset: 'assets/categories/Leafs and herbs.png',
        title: 'Leafs and Herbs'),
  ];

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ViewOrdersBloc>().add(const ViewOrdersEvent.vieworder());
    });
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 9),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Categories',
                  style: TextStyles.rubik18black33,
                ),
              ],
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: double.infinity,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: model.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  final String categoryTitle = model[index].title;
               
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/viewCategorySCreen',
                          arguments: categoryTitle);
                    },
                    child: CategoriesContainer(
                      title: model[index].title,
                      imgAsset: model[index].imgAsset,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoriesContainer extends StatelessWidget {
  final String title;
  final String imgAsset;

  const CategoriesContainer({
    super.key,
    required this.title,
    required this.imgAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 5.0,
                spreadRadius: 2.0,
                offset: const Offset(3.0, 3.0),
              ),
            ],
            borderRadius: BorderRadius.circular(12)),
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text(
              title,
              style: TextStyles.rubik16black24,
            ),
            const SizedBox(height: 10),
            Image.asset(
              imgAsset,
              width: 70,
              height: 70,
            )
          ],
        ),
      ),
    );
  }
}

class CategoryModel {
  final String title;
  final String imgAsset;
  const CategoryModel({
    required this.imgAsset,
    required this.title,
  });
}
