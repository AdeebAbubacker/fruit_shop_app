import 'package:flutter/material.dart';
import 'package:fruit_shop_app/core/constants/text_styles.dart';
import 'package:fruit_shop_app/core/model/home_item/home_item.dart';
import 'package:fruit_shop_app/core/service/cart/cart_service.dart';

class ViewItemScreen extends StatefulWidget {
  ViewItemScreen({super.key});

  @override
  State<ViewItemScreen> createState() => _ViewItemScreenState();
}

class _ViewItemScreenState extends State<ViewItemScreen> {
  final CartService _cartService = CartService();

  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    final Item item = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                const SizedBox(height: 120),
                Center(
                  child: Column(
                    children: [
                      Image.network("${item.imageUrl}"),
                      Text(
                        "${item.name}",
                        style: TextStyles.rubik18greyw500,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 17, 150, 22),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (quantity > 1) quantity--;
                          });
                        },
                        icon: const Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "$quantity kg",
                      style: TextStyles.rubik16black24,
                    ),
                    const SizedBox(width: 10),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 17, 150, 22),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            quantity++;
                          });
                        },
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "Rs ${item.realPrice * quantity}",
                      style: TextStyles.rubik16black24,
                    ),
                    const SizedBox(width: 30),
                  ],
                ),
              ],
            ),
            Positioned(
              bottom: 75,
              right: 45,
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _cartService.addToCart(item.name, quantity);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 10),
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 35, vertical: 5),
                      child: Center(
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
