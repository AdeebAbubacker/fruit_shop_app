import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_shop_app/core/constants/text_styles.dart';
import 'package:fruit_shop_app/core/model/order/order.dart';
import 'package:fruit_shop_app/core/view_model/viewOrders/view_orders_bloc.dart';


class OrderWidget extends StatelessWidget {
  const OrderWidget({super.key});

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
                  'My Orders',
                  style: TextStyles.rubik18black33,
                ),
              ],
            ),
            SizedBox(height: 15),
            BlocBuilder<ViewOrdersBloc, ViewOrdersState>(
                builder: (context, state) {
              return state.maybeMap(
                loading: (value) {
                  return SizedBox();
                },
                orElse: () {
                return Container();
              }, dataLoaded: (value) {
                return ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: value.orderList.length,
                  itemBuilder: (context, orderIndex) {
                  final  OrderModel order = value.orderList[orderIndex];
                    return InkWell(
                      onTap: () {
                      Navigator.pushNamed(context, '/viewOrderDetails', arguments: order);
                    },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: OrderItemContainer(
                          imgUrls:
                              order.items.map((item) => item.imgUrl).toList(),
                          names: order.items.map((item) => item.name).toList(),
                          orderId: order.orderId,
                        ),
                      ),
                    );
                  },
                );
              });
            })
          ],
        ),
      ),
    );
  }
}

class OrderItemContainer extends StatelessWidget {
  final List<String> imgUrls;
  final List<String> names;
  final String orderId;

  const OrderItemContainer({
    super.key,
    required this.imgUrls,
    required this.names,
    required this.orderId,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 12),
          Stack(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 100, // Set a fixed width for the container
                    height: 100, // Set a fixed height for the container
                    child: Stack(
                      children: imgUrls.asMap().entries.map((entry) {
                        int index = entry.key;
                        String imgUrl = entry.value;
                        return Positioned(
                          left: index * 20.0, // Position images with an offset
                          child: Image.network(
                            imgUrl,
                            height: 70,
                            width: 70,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        Text(
                          names.join(', '),
                          style: TextStyles.rubik14black33,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                right: 0,
                top: 25, // Adjust the vertical position as needed
                child: IconButton(
                  icon: const Icon(Icons.arrow_forward_ios, size: 24),
                  onPressed: () {
                    // Handle the button press here
                    print('Arrow button pressed');
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            'Order Id: $orderId',
            style: TextStyles.rubik12black00,
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
