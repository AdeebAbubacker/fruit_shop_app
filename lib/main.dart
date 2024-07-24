import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fruit_shop_app/core/db/hiveDB/adapter/user_adapter/user_adapter.dart';
import 'package:fruit_shop_app/core/db/hiveDB/box/userDetailsBox.dart';
import 'package:fruit_shop_app/core/service/auth/auth_service.dart';
import 'package:fruit_shop_app/core/service/cart/cart_service.dart';
import 'package:fruit_shop_app/core/service/home/home_screen_service.dart';
import 'package:fruit_shop_app/core/service/order/order_service.dart';
import 'package:fruit_shop_app/core/view_model/getUserData/get_user_data_bloc.dart';
import 'package:fruit_shop_app/core/view_model/updateCart/update_cart_bloc.dart';
import 'package:fruit_shop_app/core/view_model/viewOrders/view_orders_bloc.dart';
import 'package:fruit_shop_app/core/view_model/view_cart/view_cart_bloc.dart';
import 'package:fruit_shop_app/core/view_model/getCheckThisItem/get_check_thisitem_bloc.dart';
import 'package:fruit_shop_app/core/view_model/getDealofTheDay/get_dealof_the_day_bloc.dart';
import 'package:fruit_shop_app/core/view_model/getEveryDayEssential/get_every_day_essential_bloc.dart';
import 'package:fruit_shop_app/core/view_model/getExoticFruit/get_exotic_fruit_bloc.dart';
import 'package:fruit_shop_app/core/view_model/logout/logout_bloc.dart';
import 'package:fruit_shop_app/core/view_model/checklogin/check_login_bloc.dart';
import 'package:fruit_shop_app/core/view_model/login/login_bloc.dart';
import 'package:fruit_shop_app/core/view_model/regsiter/register_bloc.dart';
import 'package:fruit_shop_app/core/view_model/view_cart_price/view_cart_price_bloc.dart';
import 'package:fruit_shop_app/screens/auth_screen/login_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fruit_shop_app/screens/auth_screen/regsiter_screen.dart';
import 'package:fruit_shop_app/screens/extras/aboutUs/about_us_screen.dart';
import 'package:fruit_shop_app/screens/extras/termsAndConditions/termsn_condition_screen.dart';
import 'package:fruit_shop_app/screens/main_screen/main_screen.dart';
import 'package:fruit_shop_app/screens/splash_screen/splash_screen.dart';
import 'package:fruit_shop_app/screens/view_item/view_item_screen.dart';
import 'package:fruit_shop_app/screens/view_order_detail/view_order_detail_screen.dart';
import 'package:fruit_shop_app/testing/testing_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(UserDBAdapter());
  UserDetailsBox = await Hive.openBox<UserDB>('UserDetailsBox');

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  ///----------------lock in portrait mode-----------------------------------
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    //  runApp(const MyApp());

    runApp(const MyApp());
  });
}

//----------------------------
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(AuthService(FirebaseAuth.instance)),
        ),
        BlocProvider(
          create: (context) => RegisterBloc(AuthService(FirebaseAuth.instance)),
        ),
        BlocProvider(
          create: (context) =>
              CheckLoginBloc(AuthService(FirebaseAuth.instance)),
        ),
        BlocProvider(
          create: (context) => LogoutBloc(AuthService(FirebaseAuth.instance)),
        ),
        BlocProvider(
          create: (context) => GetCheckThisitemBloc(HomeScreenService()),
        ),
        BlocProvider(
          create: (context) => GetDealofTheDayBloc(HomeScreenService()),
        ),
        BlocProvider(
          create: (context) => GetEveryDayEssentialBloc(HomeScreenService()),
        ),
        BlocProvider(
          create: (context) => GetExoticFruitBloc(HomeScreenService()),
        ),
        BlocProvider(
          create: (context) => ViewCartBloc(CartService()),
        ),
        BlocProvider(
          create: (context) => ViewCartPriceBloc(CartService()),
        ),
        BlocProvider(
          create: (context) => UpdateCartBloc(CartService()),
        ),
        BlocProvider(
          create: (context) => ViewOrdersBloc(OrderService()),
        ),
        BlocProvider(
          create: (context) =>
              GetUserDataBloc(AuthService(FirebaseAuth.instance)),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: false,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashScreen(),
          '/sigin': (context) => const SignInScreen(),
          '/register': (context) => const RegistrationScreen(),
          '/mainscreen': (context) => const MainScreen(),
          '/viewItemDetails': (context) => ViewItemScreen(),
          '/viewOrderDetails': (context) => const ViewOrderDetailScreen(),
        },
      ),
    );
  }
}




//https://up-homes-72ygjg-61fd9.web.app/#/privacy-policy
//https://up-homes-72ygjg-61fd9.web.app
//https://up-homes-72ygjg-61fd9.web.app/#/terms-conditions
//------------------------------------------------