import 'package:flutter/material.dart';
import 'package:fruit_shop_app/widgets/appbar.dart';
import 'package:svg_flutter/svg.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [HomeAppBar()],
          ),
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
                          color: Colors.red,
                        )
                      : Image.asset(
                          'assets/bottom_nav/home.png',
                          color: const Color.fromARGB(255, 97, 96, 96),
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
                        color: Colors.red,
                      )
                    : Image.asset(
                        'assets/bottom_nav/search.png',
                        color: const Color.fromARGB(255, 97, 96, 96),
                      ),
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                width: 24.0,
                height: 24.0,
                child: _selectedIndex == 2
                    ? Image.asset(
                        'assets/bottom_nav/favourite.png',
                        color: Colors.red,
                      )
                    : Image.asset(
                        'assets/bottom_nav/favourite.png',
                        color: const Color.fromARGB(255, 97, 96, 96),
                      ),
              ),
              label: 'Favourite',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                width: 24.0,
                height: 24.0,
                child: _selectedIndex == 3
                    ? Image.asset(
                        'assets/bottom_nav/cart.png',
                        color: Colors.red,
                      )
                    : Image.asset(
                        'assets/bottom_nav/cart.png',
                        color: const Color.fromARGB(255, 97, 96, 96),
                      ),
              ),
              label: 'Cart',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.red,
          //onTap: _onItemTapped,
        ),
      ),
    );
  }
}
