// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:fruit_shop_app/core/constants/text_styles.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// import 'package:fruit_shop_app/core/view_model/getExoticFruit/get_exotic_fruit_bloc.dart';
// import 'package:fruit_shop_app/core/view_model/getExoticVegetable/get_exotic_vegetable_bloc.dart';
// import 'package:fruit_shop_app/core/view_model/getFreshFruit/get_fresh_fruit_bloc.dart';
// import 'package:fruit_shop_app/core/view_model/getFreshMangoes/get_fresh_mango_bloc.dart';
// import 'package:fruit_shop_app/core/view_model/getFreshVegetables/get_fresh_vegetable_bloc.dart';
// import 'package:fruit_shop_app/core/view_model/getLeafsandHerbs/get_leafs_n_herb_bloc.dart';

// class IndividualCategoryScreen extends StatelessWidget {
//   IndividualCategoryScreen({super.key});
//   List<String> ddd = [
//     'ssggggggggggggggggggggggg',
//     'ssssssssssssssssssssssssssssfefre',
//     'seeeeeeeeeeeeeeeeeeeeeeeeegs',
//     'sswrsssssssssssssssfefre',
//     'sreteryrt',
//     'sssssseretssfefre',
//     'sdsggggggggggggggggggdgs',
//     'ssssssssewtertefre',
//     'sewwwwwwwwwwwwwwwwws',
//     'sssssssssssetwetssssssssfefre',
//     'ewwwwwwwwwwwwwwwwwwwwrews',
//     'ssssssssssssewtttttttttttttttttttttttttttgvvvvvvvvvvvvvvvvvvvvvvvvvvssssfefre',
//     'ssdfgcvcxwdwes',
//     'sssssssssssssafdsfefre',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     final String item = ModalRoute.of(context)!.settings.arguments as String;
//     if (item == 'Exotic Fruit') {
//       context
//           .read<GetExoticFruitBloc>()
//           .add(const GetExoticFruitEvent.getExoticfruit());
//     }
//     if (item == 'Exotic Vegetable') {
//       context
//           .read<GetExoticVegetableBloc>()
//           .add(const GetExoticVegetableEvent.getExoticVegetable());
//     }
//     if (item == 'Fresh Mangoes') {
//       context
//           .read<GetFreshMangoBloc>()
//           .add(const GetFreshMangoEvent.getFreshMango());
//     }
//     if (item == 'Fresh Vegetable') {
//       context
//           .read<GetFreshVegetableBloc>()
//           .add(const GetFreshVegetableEvent.getFreshVegetable());
//     }
//     if (item == 'Fresh Fruit') {
//       context
//           .read<GetFreshFruitBloc>()
//           .add(const GetFreshFruitEvent.getFreshFruit());
//     }
//     if (item == 'Leafs and Herbs') {
//       context
//           .read<GetLeafsandHerbsBloc>()
//           .add(const GetLeafsnHerbEvent.getLeafsnHerbs());
//     }
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.only(left: 12, right: 2),
//           child: SingleChildScrollView(
//             physics: const BouncingScrollPhysics(),
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Text(
//                       'My Categories',
//                       style: TextStyles.rubik18black33,
//                     ),
//                   ],
//                 ),
//                 Text('data'),
//                 const SizedBox(height: 15),
//                 ElevatedButton(
//                     onPressed: () {
//                       context
//                           .read<GetFreshMangoBloc>()
//                           .add(const GetFreshMangoEvent.getFreshMango());
//                     },
//                     child: const Text('dd')),
//                 MasonryGridView.count(
//                   physics: const NeverScrollableScrollPhysics(),
//                   shrinkWrap: true,
//                   crossAxisCount: 2,
//                   itemCount: ddd.length,
//                   itemBuilder: (context, index) {
//                     return Padding(
//                       padding: const EdgeInsets.only(bottom: 10, right: 10),
//                       child: IndividualCategoryWidget(
//                         text: item,
//                       ),
//                     );
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class IndividualCategoryWidget extends StatelessWidget {
//   final String text;
//   const IndividualCategoryWidget({
//     super.key,
//     required this.text,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         //  Navigator.pushNamed(context, '/viewItemDetails', arguments: item);
//       },
//       child: Container(
//         width: double.infinity,
//         decoration: BoxDecoration(
//           color: const Color.fromARGB(255, 255, 250, 250),
//           borderRadius: BorderRadius.circular(15),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.2),
//               spreadRadius: 2,
//               blurRadius: 5,
//               offset: const Offset(0, 3), // changes position of shadow
//             ),
//           ],
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             ClipRRect(
//               borderRadius: const BorderRadius.only(
//                 topLeft: Radius.circular(15),
//                 topRight: Radius.circular(15),
//               ),
//               child: Image.network(
//                 'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/black%20salsify.png?alt=media&token=6a845155-f4ae-4455-a159-f75d95a7da1e',
//                 height: 100,
//                 width: double.infinity,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                     padding:
//                         const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
//                     decoration: BoxDecoration(
//                       color: Colors.red,
//                       borderRadius: BorderRadius.circular(5),
//                     ),
//                     child: const Text(
//                       '23 % OFF',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 12,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 10),
//                   Wrap(children: [
//                     Text(
//                       text,
//                       style: TextStyles.rubik16black24,
//                       // maxLines: 1,
//                       // overflow: TextOverflow.ellipsis,
//                     ),
//                   ]),
//                   const SizedBox(height: 5),
//                   Text(
//                     'Rs. 23',
//                     style: TextStyle(
//                         fontSize: 14,
//                         color: Colors.grey[600],
//                         decoration: TextDecoration.lineThrough),
//                   ),
//                   Text(
//                     'Rs. 45',
//                     style: TextStyles.rubik16black24w2700,
//                   ),
//                   const SizedBox(height: 10),
//                   ElevatedButton(
//                     onPressed: () {
//                       // Add to cart functionality
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.green,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       padding: const EdgeInsets.symmetric(vertical: 10),
//                     ),
//                     child: const Center(
//                       child: Text(
//                         'Add to Cart',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 14,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_shop_app/core/constants/text_styles.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:fruit_shop_app/core/view_model/getExoticFruit/get_exotic_fruit_bloc.dart';
import 'package:fruit_shop_app/core/view_model/getExoticVegetable/get_exotic_vegetable_bloc.dart';
import 'package:fruit_shop_app/core/view_model/getFreshFruit/get_fresh_fruit_bloc.dart';
import 'package:fruit_shop_app/core/view_model/getFreshMangoes/get_fresh_mango_bloc.dart';
import 'package:fruit_shop_app/core/view_model/getFreshVegetables/get_fresh_vegetable_bloc.dart';
import 'package:fruit_shop_app/core/view_model/getLeafsandHerbs/get_leafs_n_herb_bloc.dart';
import 'package:fruit_shop_app/widgets/appbar.dart';

class IndividualCategoryScreen extends StatelessWidget {
  IndividualCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String item = ModalRoute.of(context)!.settings.arguments as String;

    // Trigger the appropriate event based on the selected category
    switch (item) {
      case 'Exotic Fruit':
        context
            .read<GetExoticFruitBloc>()
            .add(const GetExoticFruitEvent.getExoticfruit());
        break;
      case 'Exotic Vegetable':
        context
            .read<GetExoticVegetableBloc>()
            .add(const GetExoticVegetableEvent.getExoticVegetable());
        break;
      case 'Fresh Mangoes':
        context
            .read<GetFreshMangoBloc>()
            .add(const GetFreshMangoEvent.getFreshMango());
        break;
      case 'Fresh Vegetable':
        context
            .read<GetFreshVegetableBloc>()
            .add(const GetFreshVegetableEvent.getFreshVegetable());
        break;
      case 'Fresh Fruit':
        context
            .read<GetFreshFruitBloc>()
            .add(const GetFreshFruitEvent.getFreshFruit());
        break;
      case 'Leafs and Herbs':
        context
            .read<GetLeafsandHerbsBloc>()
            .add(const GetLeafsnHerbEvent.getLeafsnHerbs());
        break;
      default:
        // Handle unknown category if needed
        break;
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeAppBar(
              isthereback: true,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 2),
              child: Text(
                item,
                style: TextStyles.rubik18black33,
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12, right: 2),
                      child: Column(
                        children: [
                          _buildCategoryContent(context, item),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryContent(BuildContext context, String category) {
    switch (category) {
      case 'Exotic Fruit':
        return BlocBuilder<GetExoticFruitBloc, GetExoticFruitState>(
          builder: (context, state) {
            return state.maybeMap(
              dataLoaded: (value) {
                return MasonryGridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  itemCount: value.items.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10, right: 10),
                      child: IndividualCategoryWidget(
                        text: value.items[index].name,
                        imgUrl: value.items[index].imageUrl,
                        offerRate: value.items[index].offer,
                        discountPrice: value.items[index].discountPrice,
                        realPrice: value.items[index].realPrice,
                      ),
                    );
                  },
                );
              },
              error: (value) {
                return const Text('Error fetching data');
              },
              loading: (_) {
                return const CircularProgressIndicator();
              },
              orElse: () {
                return Container(
                  width: 230,
                  height: 70,
                  color: Colors.amber,
                );
              },
            );
          },
        );

      case 'Exotic Vegetable':
        return BlocBuilder<GetExoticVegetableBloc, GetExoticVegetableState>(
          builder: (context, state) {
            return state.maybeMap(
              dataLoaded: (value) {
                return MasonryGridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  itemCount: value.items.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10, right: 10),
                      child: IndividualCategoryWidget(
                        text: value.items[index].name,
                        imgUrl: value.items[index].imageUrl,
                        offerRate: value.items[index].offer,
                        discountPrice: value.items[index].discountPrice,
                        realPrice: value.items[index].realPrice,
                      ),
                    );
                  },
                );
              },
              error: (value) {
                return const Text('Error fetching data');
              },
              loading: (_) {
                return const CircularProgressIndicator();
              },
              orElse: () {
                return Container(
                  width: 230,
                  height: 70,
                  color: Colors.amber,
                );
              },
            );
          },
        );

      case 'Fresh Mangoes':
        return BlocBuilder<GetFreshMangoBloc, GetFreshMangoState>(
          builder: (context, state) {
            return state.maybeMap(
              dataLoaded: (value) {
                return MasonryGridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  itemCount: value.items.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10, right: 10),
                      child: IndividualCategoryWidget(
                        text: value.items[index].name,
                        imgUrl: value.items[index].imageUrl,
                        offerRate: value.items[index].offer,
                        discountPrice: value.items[index].discountPrice,
                        realPrice: value.items[index].realPrice,
                      ),
                    );
                  },
                );
              },
              error: (value) {
                return const Text('Error fetching data');
              },
              loading: (_) {
                return const CircularProgressIndicator();
              },
              orElse: () {
                return Container(
                  width: 230,
                  height: 70,
                  color: Colors.amber,
                );
              },
            );
          },
        );

      case 'Fresh Vegetable':
        return BlocBuilder<GetFreshVegetableBloc, GetFreshVegetableState>(
          builder: (context, state) {
            return state.maybeMap(
              dataLoaded: (value) {
                return MasonryGridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  itemCount: value.items.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10, right: 10),
                      child: IndividualCategoryWidget(
                        text: value.items[index].name,
                        imgUrl: value.items[index].imageUrl,
                        offerRate: value.items[index].offer,
                        discountPrice: value.items[index].discountPrice,
                        realPrice: value.items[index].realPrice,
                      ),
                    );
                  },
                );
              },
              error: (value) {
                return const Text('Error fetching data');
              },
              loading: (_) {
                return const CircularProgressIndicator();
              },
              orElse: () {
                return Container(
                  width: 230,
                  height: 70,
                  color: Colors.amber,
                );
              },
            );
          },
        );

      case 'Fresh Fruit':
        return BlocBuilder<GetFreshFruitBloc, GetFreshFruitState>(
          builder: (context, state) {
            return state.maybeMap(
              dataLoaded: (value) {
                return MasonryGridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  itemCount: value.items.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10, right: 10),
                      child: IndividualCategoryWidget(
                        text: value.items[index].name,
                        imgUrl: value.items[index].imageUrl,
                        offerRate: value.items[index].offer,
                        discountPrice: value.items[index].discountPrice,
                        realPrice: value.items[index].realPrice,
                      ),
                    );
                  },
                );
              },
              error: (value) {
                return const Text('Error fetching data');
              },
              loading: (_) {
                return const CircularProgressIndicator();
              },
              orElse: () {
                return Container(
                  width: 230,
                  height: 70,
                  color: Colors.amber,
                );
              },
            );
          },
        );

      case 'Leafs and Herbs':
        return BlocBuilder<GetLeafsandHerbsBloc, GetLeafsnHerbState>(
          builder: (context, state) {
            return state.maybeMap(
              dataLoaded: (value) {
                return MasonryGridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  itemCount: value.items.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10, right: 10),
                      child: IndividualCategoryWidget(
                        text: value.items[index].name,
                        imgUrl: value.items[index].imageUrl,
                        offerRate: value.items[index].offer,
                        discountPrice: value.items[index].discountPrice,
                        realPrice: value.items[index].realPrice,
                      ),
                    );
                  },
                );
              },
              error: (value) {
                return const Text('Error fetching data');
              },
              loading: (_) {
                return const CircularProgressIndicator();
              },
              orElse: () {
                return Container(
                  width: 230,
                  height: 70,
                  color: Colors.amber,
                );
              },
            );
          },
        );

      default:
        return const SizedBox.shrink();
    }
  }
}

class IndividualCategoryWidget extends StatelessWidget {
  final String text;
  final String imgUrl;
  final String offerRate;
  final String realPrice;
  final String discountPrice;
  const IndividualCategoryWidget({
    super.key,
    required this.text,
    required this.imgUrl,
    required this.offerRate,
    required this.discountPrice,
    required this.realPrice,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.pushNamed(context, '/viewItemDetails', arguments: text);
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 250, 250),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              child: Image.network(
                imgUrl,
                height: 100,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      '$offerRate % OFF',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Wrap(children: [
                    Text(
                      text,
                      style: TextStyles.rubik16black24,
                      // maxLines: 1,
                      // overflow: TextOverflow.ellipsis,
                    ),
                  ]),
                  const SizedBox(height: 5),
                  Text(
                    'Rs. $discountPrice',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                        decoration: TextDecoration.lineThrough),
                  ),
                  Text(
                    'Rs. $realPrice',
                    style: TextStyles.rubik16black24w2700,
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Add to cart functionality
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 10),
                    ),
                    child: const Center(
                      child: Text(
                        'Add to Cart',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
