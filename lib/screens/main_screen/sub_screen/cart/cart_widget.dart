import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_shop_app/core/constants/text_styles.dart';
import 'package:fruit_shop_app/core/service/order/order_service.dart';
import 'package:fruit_shop_app/core/view_model/updateCart/update_cart_bloc.dart';
import 'package:fruit_shop_app/core/view_model/view_cart/view_cart_bloc.dart';
import 'package:fruit_shop_app/core/view_model/view_cart_price/view_cart_price_bloc.dart';
import 'package:fruit_shop_app/widgets/buttons.dart';

class ViewCartWidget extends StatelessWidget {
  ViewCartWidget({super.key});
  final OrderService _orderService = OrderService();
  @override
  Widget build(BuildContext context) {
    // Trigger the event to load cart data only once at init state
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ViewCartBloc>().add(const ViewCartEvent.viewcart());
      context.read<ViewCartPriceBloc>().add(ViewCartPriceEvent.viewcart());
    });

    return Padding(
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
            BlocListener<ViewCartBloc, ViewCartState>(
              listener: (context, state) {
                // Handle one-time actions here if needed
                // For example, show a snackbar or a dialog
              },
              child: BlocBuilder<ViewCartBloc, ViewCartState>(
                builder: (context, state) {
                  return state.maybeMap(
                    dataLoaded: (value) {
                      return Column(
                        children: [
                          ListView.builder(
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
                                  initialQuantity:
                                      value.cartItems[index].quantity,
                                ),
                              );
                            },
                          ),
                        ],
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
            ),
            BlocBuilder<ViewCartPriceBloc, ViewCartPriceState>(
              builder: (context, state) {
                return state.maybeMap(
                  dataLoaded: (value) {
                    int totalItems = value.cartItems.length;
                    int subTotal = value.cartItems.fold(
                        0,
                        (sum, item) =>
                            sum + (item.quantity * int.parse(item.price)));
                    int total = subTotal +
                        40; // Assuming Rs 40 is a fixed additional charge

                    return ProccedToCheckout(
                      totalItems: totalItems,
                      subTotal: subTotal,
                      total: total,
                      proceed: () async {
                        await _orderService.placeOrder(value.cartItems, '3');
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
          ],
        ),
      ),
    );
  }
}

class ProccedToCheckout extends StatelessWidget {
  final VoidCallback proceed;
  final int totalItems;
  final int subTotal;
  final int total;

  const ProccedToCheckout({
    super.key,
    required this.totalItems,
    required this.subTotal,
    required this.total,
    required this.proceed,
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
                "$totalItems",
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
                "Rs $subTotal",
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
                "Rs $total",
                style: TextStyles.rubik16black24w2700,
              ),
            ],
          ),
        ),
        const SizedBox(height: 50),
        // ColoredButton(
        //   onPressed: () {},
        //   text: 'CHECKOUT',
        // ),
        ColoredButton(
          onPressed: proceed,
          text: 'PLACE ORDER',
        ),
      ],
    );
  }
}

class CartItemContainer extends StatefulWidget {
  final String imgUrl;
  final String name;
  final String price;
  final int initialQuantity;

  const CartItemContainer({
    super.key,
    required this.imgUrl,
    required this.name,
    required this.price,
    required this.initialQuantity,
  });

  @override
  _CartItemContainerState createState() => _CartItemContainerState();
}

class _CartItemContainerState extends State<CartItemContainer> {
  late int quantity;
  late int totalAmount;

  @override
  void initState() {
    super.initState();
    quantity = widget.initialQuantity;
    totalAmount = quantity * int.parse(widget.price);
  }

  bool _isUpdating = false;
  Future<void> _updateCart(int newQuantity) async {
    if (_isUpdating) return; // Prevent simultaneous updates

    setState(() {
      _isUpdating = true;
      quantity = newQuantity;
      totalAmount = quantity * int.parse(widget.price);
    });

    try {
      context.read<UpdateCartBloc>().add(UpdateCartEvent.add(
            itemId: widget.name,
            quantity: quantity,
          ));
    } catch (e) {
      // Handle errors if necessary
    } finally {
      setState(() {
        _isUpdating = false;
      });
    }
  }

  void _incrementQuantity() {
    _updateCart(quantity + 1);
  }

  void _decrementQuantity() {
    if (quantity > 1) {
      _updateCart(quantity - 1);
    }
  }
  // void _incrementQuantity() {
  //   setState(() {
  //     quantity++;
  //     totalAmount = quantity * int.parse(widget.price);
  //     context.read<UpdateCartBloc>().add(UpdateCartEvent.add(
  //           itemId: widget.name,
  //           quantity: quantity,
  //         ));
  //   });
  //   WidgetsBinding.instance.addPostFrameCallback((_) {
  //     context
  //         .read<ViewCartPriceBloc>()
  //         .add(const ViewCartPriceEvent.viewcart());
  //   });
  // }

  // void _decrementQuantity() {
  //   if (quantity > 1) {
  //     setState(() {
  //       quantity--;
  //       totalAmount = quantity * int.parse(widget.price);
  //       context.read<UpdateCartBloc>().add(UpdateCartEvent.add(
  //             itemId: widget.name,
  //             quantity: quantity,
  //           ));
  //     });
  //     WidgetsBinding.instance.addPostFrameCallback((_) {
  //       context
  //           .read<ViewCartPriceBloc>()
  //           .add(const ViewCartPriceEvent.viewcart());
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UpdateCartBloc, UpdateCartState>(
      listener: (context, state) {
        state.maybeMap(
          loading: (_) {
            // Handle loading state if necessary
          },
          dataLoaded: (data) {
            context
                .read<ViewCartPriceBloc>()
                .add(const ViewCartPriceEvent.viewcart());
          },
          error: (error) {
            // Handle error state
          },
          orElse: () {},
        );
      },
      child: Container(
        width: double.infinity,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 5.0,
              spreadRadius: 2.0,
              offset: const Offset(3.0, 3.0),
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
                    widget.imgUrl,
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
                    widget.name,
                    style: TextStyles.rubik14black33,
                  ),
                  Text(
                    'Rs ${widget.price} / Kg',
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
                        onPressed: _decrementQuantity,
                        icon: const Icon(Icons.remove),
                      ),
                      Text(
                        '$quantity kg',
                        style: TextStyles.rubik14black33,
                      ),
                      IconButton(
                        onPressed: _incrementQuantity,
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Text(
                    'Total Rs $totalAmount',
                    style: TextStyles.rubik14black33,
                  ),
                  const Spacer()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
