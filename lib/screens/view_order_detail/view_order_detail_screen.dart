import 'package:flutter/material.dart';
import 'package:fruit_shop_app/core/constants/common.dart';
import 'package:fruit_shop_app/core/constants/const.dart';
import 'package:fruit_shop_app/core/constants/text_styles.dart';
import 'package:fruit_shop_app/core/model/order/order.dart';
import 'package:fruit_shop_app/widgets/appbar.dart';

class ViewOrderDetailScreen extends StatefulWidget {
  const ViewOrderDetailScreen({super.key});

  @override
  State<ViewOrderDetailScreen> createState() => _ViewOrderDetailScreenState();
}

class _ViewOrderDetailScreenState extends State<ViewOrderDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final OrderModel orderModel =
        ModalRoute.of(context)!.settings.arguments as OrderModel;

    final screenwidth = screenWidth(context);

    final paddingw20 = screenwidth * 20 / FigmaConstants.figmaDeviceWidth;

    return Scaffold(
      backgroundColor: const Color(0XFFF3F6FD),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const HomeAppBar(),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: paddingw20 + 5, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hey, Rahul!',
                    style: TextStyles.rubik20black33w600,
                  ),
                  const SizedBox(height: 5),
                  Wrap(
                    children: [
                      Text(
                        "Thank you for your order! We'll keep you \nupdated on arrival.",
                        style: TextStyles.rubik14black66,
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  OrderDeatilsCard(
                    orderId: orderModel.orderId,
                  ),
                  const SizedBox(height: 20),
                  OrderItemsCard(
                    orderId: orderModel.orderId,
                    itemcount: orderModel.items.length,
                    imageurl:
                        orderModel.items.map((item) => item.imgUrl).toList(),
                    name: orderModel.items.map((item) => item.name).toList(),
                    qty: orderModel.items.map((item) => item.quantity).toList(),
                    price: orderModel.items.map((item) => item.price).toList(),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class OrderDeatilsCard extends StatelessWidget {
  final String orderId;
  const OrderDeatilsCard({
    super.key,
    required this.orderId,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFF6F8FC),
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: const Color.fromARGB(255, 198, 199, 200),
          width: 1.4,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Order Details',
              style: TextStyles.rubik16black33w600,
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Order Id',
                  style: TextStyles.rubik14black33w300,
                ),
                const Spacer(),
                Text(
                  '#$orderId',
                  style: TextStyles.rubik14black33w300,
                )
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Text(
                  'Order Placed on',
                  style: TextStyles.rubik14black33w300,
                ),
                const Spacer(),
                Text(
                  '20 July 2023',
                  style: TextStyles.rubik14black33w300,
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Text(
                  'Total',
                  style: TextStyles.rubik14black33w300,
                ),
                const Spacer(),
                Text(
                  'Rs 250',
                  style: TextStyles.rubik14black33w300,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class OrderItemsCard extends StatelessWidget {
  final List<String> imageurl;
  final List<String> name;
  final List<int> qty;
  final List<String> price;
  final int itemcount;
  final String orderId;
  const OrderItemsCard({
    super.key,
    required this.orderId,
    required this.itemcount,
    required this.name,
    required this.imageurl,
    required this.qty,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(255, 198, 199, 200),
                width: 1.4,
              ),
              color: const Color.fromARGB(255, 234, 234, 234),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
              )),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  'Order #$orderId',
                  style: TextStyles.rubik14black33w300,
                ),
              )
            ],
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: itemcount,
          itemBuilder: (context, index) {
            return Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                    color: Color.fromARGB(255, 198, 199, 200),
                    width: 1,
                  ),
                  right: BorderSide(
                    color: Color.fromARGB(255, 198, 199, 200),
                    width: 1,
                  ),
                  bottom: BorderSide(
                    color: Color.fromARGB(255, 198, 199, 200),
                    width: 1,
                  ),
                ),
                color: Color.fromARGB(255, 245, 244, 244),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Image.network(
                          imageurl[index],
                          width: 50,
                          height: 50,
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 5),
                        Wrap(
                          children: [
                            Text(
                              name[index],
                              style: TextStyles.rubik14black33,
                            ),
                          ],
                        ),
                        const SizedBox(height: 2),
                        Text(
                          'Qty : ${qty[index]}',
                          style: TextStyles.rubik14black33,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Rs ${price[index]}',
                          style: TextStyles.rubik14black33semibold,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
