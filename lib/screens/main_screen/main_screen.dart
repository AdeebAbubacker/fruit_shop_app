import 'package:flutter/material.dart';
import 'package:fruit_shop_app/screens/main_screen/sub_screen/cart/cart_widget.dart';
import 'package:fruit_shop_app/screens/main_screen/sub_screen/orders/order_widget.dart';
import 'package:fruit_shop_app/screens/main_screen/sub_screen/explore/explore_widget.dart';
import 'package:fruit_shop_app/screens/main_screen/sub_screen/home/home_widget.dart';
import 'package:fruit_shop_app/widgets/appbar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static final List<Widget> _screens = [
    const HomeWidget(),
    const ExploreWidget(),
    const OrderWidget(),
    ViewCartWidget()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF3F6FD),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            const HomeAppBar(),
            Expanded(
              child: _screens[_selectedIndex],
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 92.0,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SizedBox(
                  width: 24.0, // Set a fixed width
                  height: 24.0, // Set a fixed height
                  child: _selectedIndex == 0
                      ? Image.asset(
                          'assets/bottom_nav/home.png',
                          color: Colors.green,
                        )
                      : Image.asset(
                          'assets/bottom_nav/home.png',
                          color: Colors.grey,
                        )),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                width: 24.0,
                height: 24.0,
                child: _selectedIndex == 1
                    ? Image.asset(
                        'assets/bottom_nav/search.png',
                        color: Colors.green,
                      )
                    : Image.asset(
                        'assets/bottom_nav/search.png',
                        color: Colors.grey,
                      ),
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                  width: 24.0,
                  height: 24.0,
                  child: _selectedIndex == 2
                      ? const Icon(
                          Icons.shop,
                          color: Colors.green,
                        )
                      : const Icon(
                          Icons.shop,
                          color: Colors.grey,
                        )),
              label: 'Orders',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                width: 24.0,
                height: 24.0,
                child: _selectedIndex == 3
                    ? Image.asset(
                        'assets/bottom_nav/cart.png',
                        color: Colors.green,
                      )
                    : Image.asset(
                        'assets/bottom_nav/cart.png',
                        color: Colors.grey,
                      ),
              ),
              label: 'Cart',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.green,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
