import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_shop_app/core/routes/app_route.dart';
import 'package:fruit_shop_app/core/view_model/bloc/logout_bloc.dart';

class LogoutSCreen extends StatelessWidget {
  const LogoutSCreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocListener<LogoutBloc, LogoutState>(
          listener: (context, state) {
             state.maybeWhen(
            userlogout: (user) {
              navigateToSiginIn(context);
            },
            userNotlogout: (error) {
              Future.delayed(const Duration(seconds: 4), () {
                
              });
            },
            orElse: () {},
          );
          },
          child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          context.read<LogoutBloc>().add(LogoutEvent.logout());
                        },
                        child: const Text("Logout"))
                  ],
                ),
        ),
      ),
    );
  }
}
