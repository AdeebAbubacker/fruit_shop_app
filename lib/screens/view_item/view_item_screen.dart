import 'package:flutter/material.dart';
import 'package:fruit_shop_app/core/constants/text_styles.dart';

class ViewItemScreen extends StatelessWidget {
  const ViewItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                      Image.asset('assets/chilli.png'),
                      Text(
                        "Chilli",
                        style: TextStyles.rubik18greyw500,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    SizedBox(width: 10),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 17, 150,
                            22), // Set the background color to green

                        shape: BoxShape.circle, // Make the container circular
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.remove,
                          color: Colors.white, // Set the icon color to white
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "1 kg",
                      style: TextStyles.rubik16black24,
                    ),
                    SizedBox(width: 10),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 17, 150,
                            22), // Set the background color to green

                        shape: BoxShape.circle, // Make the container circular
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          color: Colors.white, // Set the icon color to white
                        ),
                      ),
                    ),
                    Spacer(),
                    Text(
                      "Rs 200",
                      style: TextStyles.rubik16black24,
                    ),
                    SizedBox(
                      width: 30,
                    )
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
                      // Add to cart functionality
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 35, vertical: 5),
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
            )
          ],
        ),
      ),
    );
  }
}
