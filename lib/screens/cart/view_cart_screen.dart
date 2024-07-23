import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_shop_app/core/constants/text_styles.dart';
import 'package:fruit_shop_app/core/view_model/bloc/view_cart_bloc.dart';
import 'package:fruit_shop_app/widgets/buttons.dart';

class ViewCartScreen extends StatelessWidget {
  const ViewCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ViewCartBloc>().add(const ViewCartEvent.viewcart());
    });
    return Scaffold(
      backgroundColor: const Color(0XFFFAFAFA),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 9),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 15),
                Text(
                  'My Cart',
                  style: TextStyles.rubik18black33,
                ),
                const SizedBox(height: 20),
                BlocConsumer<ViewCartBloc, ViewCartState>(
                  listener: (context, state) {
                    // TODO: implement listener
                  },
                  builder: (context, state) {
                    return state.maybeMap(
                      dataLoaded: (value) {
                        return ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: value.cartItems.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 15),
                              child: CartItemContainer(
                                imgUrl: value.cartItems[index].imgUrl,
                                name: value.cartItems[index].name,
                                price: value.cartItems[index].price,
                                qunatity: value.cartItems[index].quantity,
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
                ),
                const ProccedToCheckout()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProccedToCheckout extends StatelessWidget {
  const ProccedToCheckout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Text(
                "Items",
                style: TextStyles.rubik16black24,
              ),
              const Spacer(),
              Text(
                "2",
                style: TextStyles.rubik16black24w2700,
              ),
            ],
          ),
        ),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Text(
                "Sub Total",
                style: TextStyles.rubik16black24,
              ),
              const Spacer(),
              Text(
                "Rs 300",
                style: TextStyles.rubik16black24w2700,
              ),
            ],
          ),
        ),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Text(
                "Total",
                style: TextStyles.rubik16black24,
              ),
              const Spacer(),
              Text(
                "Rs 340",
                style: TextStyles.rubik16black24w2700,
              ),
            ],
          ),
        ),
        const SizedBox(height: 50),
        ColoredButton(
          onPressed: () {},
          text: 'CHECKOUT',
        ),
      ],
    );
  }
}

class CartItemContainer extends StatelessWidget {
  final String imgUrl;
  final String name;
  final String price;
  final int qunatity;
  const CartItemContainer({
    super.key,
    required this.imgUrl,
    required this.name,
    required this.price,
    required this.qunatity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey
                .withOpacity(0.3), // Shadow color with some transparency
            blurRadius: 5.0, // Adjust blur for softness
            spreadRadius: 2.0, // Adjust spread for shadow size
            offset: const Offset(3.0, 3.0), // Offset the shadow slightly
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  imgUrl,
                  height: 70,
                  width: 70,
                ),
              ],
            ),
            const SizedBox(width: 5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Text(
                  name,
                  style: TextStyles.rubik14black33,
                ),
                Text(
                  'Rs $price / Kg',
                  style: TextStyles.rubiklight14grey70,
                ),
              ],
            ),
            const Spacer(),
            Column(
              children: [
                const SizedBox(height: 8),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.remove)),
                    Text(
                      '$qunatity kg',
                      style: TextStyles.rubik14black33,
                    ),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                  ],
                ),
                const Spacer(),
                Text(
                  'Total Rs 35',
                  style: TextStyles.rubik14black33,
                ),
                const Spacer()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
