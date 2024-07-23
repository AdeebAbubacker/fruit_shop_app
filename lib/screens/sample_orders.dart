// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:fruit_shop_app/core/service/order/order_service.dart';
// import 'package:fruit_shop_app/core/view_model/viewOrders/view_orders_bloc.dart';
// import 'package:fruit_shop_app/screens/main_screen/sub_screen/cart/cart_widget.dart';

// class SampleOrders extends StatelessWidget {
//   const SampleOrders({super.key});

//   @override
//   Widget build(BuildContext context) {
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       context.read<ViewOrdersBloc>().add(const ViewOrdersEvent.vieworder());
//     });
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Center(
//           child: BlocBuilder<ViewOrdersBloc, ViewOrdersState>(
//             builder: (context, state) {
//               return state.maybeMap(
//                 dataLoaded: (value) {
//                   return Column(
//                     children: [
//                       SizedBox(
//                         width: 230,
//                         child: ListView.builder(
//                           physics: const BouncingScrollPhysics(),
//                           shrinkWrap: true,
//                           itemCount: value.orderList[0].items.length,
//                           itemBuilder: (context, index) {
//                             return Padding(
//                                 padding: const EdgeInsets.only(bottom: 15),
//                                 child: Text('ddd${value.orderList[0].items[index].name}'));
//                           },
//                         ),
//                       ),
//                     ],
//                   );
//                 },
//                 error: (value) {
//                   return const Text('Error fetching data');
//                 },
//                 loading: (_) {
//                   return const CircularProgressIndicator();
//                 },
//                 orElse: () {
//                   return Container(
//                     width: 230,
//                     height: 70,
//                     color: Colors.amber,
//                   );
//                 },
//               );

//               // return Column(
//               //   crossAxisAlignment: CrossAxisAlignment.center,
//               //   mainAxisAlignment: MainAxisAlignment.center,
//               //   children: [
//               //     ElevatedButton(
//               //         onPressed: () async {
//               //           context
//               //               .read<ViewOrdersBloc>()
//               //               .add(const ViewOrdersEvent.vieworder());
//               //         },
//               //         child: const Text("ddd"))
//               //   ],
//               // );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
