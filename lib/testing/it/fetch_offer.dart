import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_shop_app/core/service/home/home_screen_service.dart';
import 'package:fruit_shop_app/core/view_model/homescreen/homescreen_bloc.dart';

class FetchData extends StatelessWidget {
  const FetchData({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomescreenBloc>().add(HomescreenEvent.getEssentialItems());
    });

    return Scaffold(
      body: Center(
        child: BlocBuilder<HomescreenBloc, HomescreenState>(
          builder: (context, state) {
            return state.maybeMap(
              dataLoaded: (value) {
                print('success');
                print('----------${value}');
                return ListView.builder(
                  itemCount: value.items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(value.items[0].name),
                      subtitle: Text(value.items[0].name),
                      leading: Image.network(value.items[0].imageUrl),
                    );
                  },
                );
              },
              error: (value) {
                print('----------${value}');
                return const Text('Error fetching data');
              },
              loading: (_) {
                print('----------loading');
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
    );
  }
}
