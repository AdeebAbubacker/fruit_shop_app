// import 'package:flutter/material.dart';
// import 'package:fruit_shop_app/core/service/firebase/firestore_service.dart';
// import 'package:fruit_shop_app/core/service/home/home_screen_service.dart';


// class HomePage extends StatelessWidget {
//   final HomeScreenService _firestoreService = HomeScreenService();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home'),
//       ),
//       body: FutureBuilder(
//         future: _firestoreService.getItems(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else if (!snapshot.hasData || (snapshot.data as List).isEmpty) {
//             return Center(child: Text('No items found'));
//           } else {
//             List<Map<String, dynamic>> items = snapshot.data as List<Map<String, dynamic>>;
//             return ListView.builder(
//               itemCount: items.length,
//               itemBuilder: (context, index) {
//                 var item = items[index];
//                 return ListTile(
//                   title: Text(item['name']),
//                   subtitle: Text('\$${item['realPrice']}'),
//                   leading: Image.network(item['imageUrl']),
//                   onTap: () {
//                     Navigator.pushNamed(context, '/item', arguments: item);
//                   },
//                 );
//               },
//             );
//           }
//         },
//       ),
//     );
//   }
// }
