import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_shop_app/core/constants/text_styles.dart';
import 'package:fruit_shop_app/core/model/home_item/home_item.dart';
import 'package:fruit_shop_app/core/view_model/getCheckThisItem/get_check_thisitem_bloc.dart';
import 'package:fruit_shop_app/core/view_model/getDealofTheDay/get_dealof_the_day_bloc.dart';

class HomeListLowestPrice extends StatelessWidget {
  const HomeListLowestPrice({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<GetDealofTheDayBloc>()
          .add(const GetDealofTheDayEvent.getDealofTheDay());
    });
    return BlocBuilder<GetDealofTheDayBloc, GetDealofTheDayState>(
      builder: (context, state) {
        return state.maybeMap(
          dataLoaded: (value) {
            return SizedBox(
              height: 289, // Give a fixed height
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: value.items.length,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                itemBuilder: (context, index) {
                  Item item = value.items[index];
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/viewItemDetails', arguments: item);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 160,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 250, 250),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
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
                                value.items[index].imageUrl,
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
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 2),
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Text(
                                      '${value.items[index].offer}% OFF',
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    value.items[index].name,
                                    style: TextStyles.rubik16black24,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    'Rs. ${value.items[index].realPrice}',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey[600],
                                        decoration: TextDecoration.lineThrough),
                                  ),
                                  Text(
                                    'Rs. ${value.items[index].discountPrice}',
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
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
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
                    ),
                  );
                },
              ),
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
  }
}
