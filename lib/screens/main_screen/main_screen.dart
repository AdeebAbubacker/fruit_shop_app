import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_shop_app/core/constants/text_styles.dart';
import 'package:fruit_shop_app/core/db/hiveDB/adapter/user_adapter/user_adapter.dart';
import 'package:fruit_shop_app/core/db/hiveDB/box/userDetailsBox.dart';
import 'package:fruit_shop_app/core/view_model/getUserData/get_user_data_bloc.dart';
import 'package:fruit_shop_app/core/view_model/logout/logout_bloc.dart';
import 'package:fruit_shop_app/screens/main_screen/sub_screen/cart/cart_widget.dart';
import 'package:fruit_shop_app/screens/main_screen/sub_screen/orders/order_widget.dart';
import 'package:fruit_shop_app/screens/main_screen/sub_screen/categories/category_widget.dart';
import 'package:fruit_shop_app/screens/main_screen/sub_screen/home/home_widget.dart';
import 'package:fruit_shop_app/widgets/appbar.dart';
import 'package:fruit_shop_app/widgets/buttons.dart';
import 'package:hive_flutter/hive_flutter.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  bool shouldOpenDrawer = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static final List<Widget> _screens = [
    const HomeWidget(),
    const CategoryWidget(),
    const OrderWidget(),
    ViewCartWidget()
  ];

  void _openDrawer() {
    if (_scaffoldKey.currentState != null) {
      _scaffoldKey.currentState!.openDrawer();
    }
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<GetUserDataBloc>().add(const GetUserDataEvent.getUserData());
    });
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () async {
        if (_selectedIndex == 0) {
          SystemNavigator.pop();

          // Allow exit
        } else if (_selectedIndex == 1 ||
            _selectedIndex == 2 ||
            _selectedIndex == 3) {
          setState(() {
            _selectedIndex = 0;
          });
          return false; // Prevent exit
        }

        return false; // Prevent exit by default
      },
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
          backgroundColor: const Color.fromARGB(255, 216, 216, 216),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 55,
                ),
                CircleAvatar(
                  radius: 42,
                  backgroundColor: const Color.fromARGB(255, 225, 224, 224),
                  child: Padding(
                    padding: const EdgeInsets.all(
                        3.0), // Adjust the padding to control the image size
                    child: ClipOval(
                      child: Image.asset(
                        'assets/drawer/profile.png',
                        color: Colors.black,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                ValueListenableBuilder<Box<UserDB>>(
                  valueListenable:
                      Hive.box<UserDB>('UserDetailsBox').listenable(),
                  builder: (context, box, _) {
                    final userDetails = box.values.toList();
                    if (userDetails.isEmpty) {
                      return const SizedBox();
                    } else if (userDetails.isNotEmpty) {
                      return Column(
                        children: [
                          Text(
                            userDetails[0].name,
                            style: TextStyles.rubik14black33,
                          ),
                          Text(
                            userDetails[0].email,
                            style: TextStyles.rubik14black33,
                          ),
                        ],
                      );
                    }
                    return const SizedBox();
                  },
                ),
                const SizedBox(
                  height: 35,
                ),
                DrawerButtons(
                  content: 'Privacy Policy',
                  onPressed: () {
                    Navigator.pushNamed(context, '/privacyPolicy');
                  },
                ),
                const SizedBox(height: 10),
                DrawerButtons(
                    content: 'Terms & Conditions',
                    onPressed: () {
                      Navigator.pushNamed(context, '/termsnCondition');
                    }),
                const SizedBox(height: 10),
                DrawerButtons(
                    content: 'About',
                    onPressed: () {
                      Navigator.pushNamed(context, '/aboutUs');
                    }),
                const SizedBox(height: 10),
                DrawerButtons(
                    content: 'Logout',
                    onPressed: () async {
                      context
                          .read<LogoutBloc>()
                          .add(const LogoutEvent.logout());
                    }),
                const Spacer(),
              ],
            ),
          ),
        ),
        backgroundColor: const Color(0XFFF3F6FD),
        body: MultiBlocListener(
          listeners: [
            BlocListener<GetUserDataBloc, GetUserDataState>(
              listener: (context, state) {
                state.maybeMap(
                  dataLoaded: (value) async {
                    await UserDetailsBox.put(
                      0,
                      UserDB(
                        name: value.items.name,
                        email: value.items.email,
                      ),
                    );
                  },
                  error: (value) {},
                  loading: (_) {},
                  orElse: () {},
                );
              },
            ),
            BlocListener<LogoutBloc, LogoutState>(
              listener: (context, state) {
                state.maybeMap(
                  userlogout: (value) async {
                    print('loogged out');
                    Navigator.pushReplacementNamed(context, '/sigin');
                  },
                  userNotlogout: (value) {
                    print('not loogged out');
                  },
                  loading: (_) {},
                  orElse: () {},
                );
              },
            ),
          ],
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeAppBar(
                  onBackTap: () async {
                    setState(() {
                      if (_selectedIndex == 1 ||
                          _selectedIndex == 2 ||
                          _selectedIndex == 3) {
                        shouldOpenDrawer = false;
                        _selectedIndex = 0; // Navigate to Profile
                      } else if (_selectedIndex == 0) {
                        setState(() {
                          shouldOpenDrawer = true;
                          if (shouldOpenDrawer) {
                            return _openDrawer();
                          }
                        });
                      }
                    });
                  },
                  isthereback: _selectedIndex == 1 ||
                      _selectedIndex == 2 ||
                      _selectedIndex == 3,
                ),
                Expanded(
                  child: _screens[_selectedIndex],
                ),
              ],
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
                        ? const Icon(
                            Icons.category_sharp,
                            color: Colors.green,
                          )
                        : const Icon(
                            Icons.category_sharp,
                            color: Colors.grey,
                          )),
                label: 'Categories',
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                    width: 24.0,
                    height: 24.0,
                    child: _selectedIndex == 2
                        ? const Icon(
                            Icons.local_shipping,
                            color: Colors.green,
                          )
                        : const Icon(
                            Icons.local_shipping,
                            color: Colors.grey,
                          )),
                label: 'Orders',
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                    width: 24.0,
                    height: 24.0,
                    child: _selectedIndex == 3
                        ? const Icon(
                            Icons.shopping_cart,
                            color: Colors.green,
                          )
                        : const Icon(
                            Icons.shopping_cart,
                            color: Colors.grey,
                          )),
                label: 'Cart',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.green,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
