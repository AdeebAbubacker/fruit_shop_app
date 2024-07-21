// import 'package:flutter/material.dart';
// import 'package:fruit_shop_app/core/service/home/home_screen_service.dart';

// class PostItem extends StatelessWidget {
//   PostItem({super.key});

//   List<Products> item = [
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/artichoke.png?alt=media&token=3ff4e0a1-e66a-46bd-a782-2945087b7319',
//         name: 'Artichoke',
//         price: '323',
//         isExoticVegetable: true,
//         isExoticFruit: false,
//         isEveryDayEssential: false,
//         isLeafs_Herbs: false,
//         discprice: '319'),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/argula.png?alt=media&token=74884c5b-e1f4-4be5-9221-9825cbc2cb9b',
//         name: 'Argula',
//         price: '236',
//         isLeafs_Herbs: true,
//         isExoticVegetable: false,
//         isDealofTheDay: true,
//         isCheckThisOut: true,
//         isExoticFruit: false,
//         isEveryDayEssential: false,
//         discprice: '224'),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/asparagus.png?alt=media&token=eede4205-4e9c-4d46-8eb5-36decda0be4a',
//         name: 'Asparagus',
//         price: '308',
//         isExoticVegetable: true,
//         isExoticFruit: false,
//         isEveryDayEssential: false,
//         isLeafs_Herbs: false,
//         discprice: '256'),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/beet%20root.png?alt=media&token=6e4518c5-892e-4217-a191-516f873f546b',
//         name: 'Beet Root',
//         price: '48',
//         isEveryDayEssential: true,
//         isExoticVegetable: false,
//         isExoticFruit: false,
//         isDealofTheDay: true,
//         isCheckThisOut: true,
//         isLeafs_Herbs: false,
//         discprice: '35'),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/black%20salsify.png?alt=media&token=6a845155-f4ae-4455-a159-f75d95a7da1e',
//         name: 'Black Salsify',
//         price: '407',
//         isExoticVegetable: true,
//         isExoticFruit: false,
//         isEveryDayEssential: false,
//         isLeafs_Herbs: false,
//         discprice: '380'),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/broccoli.png?alt=media&token=622ab70d-ff07-4c60-bf9b-f297fa857ac9',
//         name: 'Broccoli',
//         price: '352',
//         isEveryDayEssential: true,
//         isExoticVegetable: false,
//         isExoticFruit: false,
//         isLeafs_Herbs: false,
//         discprice: '319'),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/brussel%20sprouts.png?alt=media&token=8a267fdd-5bc2-4557-9382-77b0c5187afb',
//         name: 'Brussel Sprouts',
//         price: '232',
//         isExoticVegetable: true,
//         isExoticFruit: false,
//         isEveryDayEssential: false,
//         isDealofTheDay: true,
//         isCheckThisOut: true,
//         isLeafs_Herbs: false,
//         discprice: '220'),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/Carrot.png?alt=media&token=68a6093e-51eb-4cad-81cd-35533a15aa19',
//         name: 'Carrot',
//         price: '34',
//         isEveryDayEssential: true,
//         isExoticVegetable: false,
//         isExoticFruit: false,
//         isLeafs_Herbs: false,
//         discprice: '32'),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/cauliflower.png?alt=media&token=8e5b731b-2cf1-4370-b2c4-e567b1618b28',
//         name: 'Cauliflower',
//         price: '36',
//         isEveryDayEssential: true,
//         isExoticVegetable: false,
//         isExoticFruit: false,
//         isLeafs_Herbs: false,
//         discprice: '34'),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/celeraic.png?alt=media&token=269b68bb-642e-4b3a-88f5-04b7f1514e1f',
//         name: 'Celeraic',
//         price: '127',
//         isExoticVegetable: true,
//         isDealofTheDay: true,
//         isCheckThisOut: true,
//         isExoticFruit: false,
//         isEveryDayEssential: false,
//         isLeafs_Herbs: false,
//         discprice: '120'),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/mushroom.png?alt=media&token=6d1e5616-01b0-4693-9108-30fd5490cedd',
//         name: 'Mushroom',
//         price: '158',
//         isEveryDayEssential: true,
//         isExoticVegetable: false,
//         isExoticFruit: false,
//         isLeafs_Herbs: false,
//         discprice: '149'),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/chicory.png?alt=media&token=8d4cb976-1732-4cc5-b8a2-13f4c04baac4',
//         name: 'Chicory',
//         price: '78',
//         isLeafs_Herbs: true,
//         isExoticVegetable: false,
//         isDealofTheDay: true,
//         isCheckThisOut: true,
//         isExoticFruit: false,
//         isEveryDayEssential: false,
//         discprice: '72'),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/chilli%20(2).png?alt=media&token=050d54f4-2020-42ee-a7ac-d35ba9b42a00',
//         name: 'Chilli',
//         price: '108',
//         isEveryDayEssential: true,
//         isExoticVegetable: false,
//         isExoticFruit: false,
//         isDealofTheDay: true,
//         isCheckThisOut: true,
//         isLeafs_Herbs: false,
//         discprice: '102'),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/chives.png?alt=media&token=bf139d6e-42c0-4c62-801c-3ec201078c0d',
//         name: 'Chives',
//         price: '47',
//         isLeafs_Herbs: true,
//         isExoticVegetable: false,
//         isExoticFruit: false,
//         isEveryDayEssential: false,
//         discprice: '42'),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/chineese%20cabbage.png?alt=media&token=b8e02dc7-39fd-414a-b265-02add07a7ca7',
//         name: 'Chineese Cabbage',
//         price: '78',
//         isExoticVegetable: true,
//         isExoticFruit: false,
//         isEveryDayEssential: false,
//         isLeafs_Herbs: false,
//         isDealofTheDay: true,
//         isCheckThisOut: true,
//         discprice: '72'),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/corn.png?alt=media&token=499a6cb7-3e86-450b-ae00-e3a3bd57d6ef',
//         name: 'Corn',
//         price: '38',
//         isEveryDayEssential: true,
//         isExoticVegetable: false,
//         isExoticFruit: false,
//         isLeafs_Herbs: false,
//         discprice: '32'),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/cucumber.png?alt=media&token=37e56447-6f78-489a-a818-8d265eef8723',
//         name: 'Cucumber',
//         price: '35',
//         isEveryDayEssential: true,
//         isExoticVegetable: false,
//         isExoticFruit: false,
//         isLeafs_Herbs: false,
//         discprice: '27'),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/Brinjal.png?alt=media&token=dadb4639-0ca9-4885-b863-910ecb397b2c',
//         name: 'Brinjal',
//         price: '65',
//         isEveryDayEssential: true,
//         isDealofTheDay: true,
//         isCheckThisOut: true,
//         isExoticVegetable: false,
//         isExoticFruit: false,
//         isLeafs_Herbs: false,
//         discprice: '61'),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/Leaf%20Lettuce.png?alt=media&token=4ed90e3a-fdb0-49fd-b751-a4dbaac6c8b8',
//         name: 'Leaf Lettuce',
//         price: '25',
//         isLeafs_Herbs: true,
//         isExoticVegetable: false,
//         isDealofTheDay: true,
//         isCheckThisOut: true,
//         isExoticFruit: false,
//         isEveryDayEssential: false,
//         discprice: '23'),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/Iceberg%20Lettuce.png?alt=media&token=19bbdfe8-6437-470c-95cb-20719d7bc779',
//         name: 'Iceberg Lettuce',
//         price: '56',
//         isLeafs_Herbs: true,
//         isExoticVegetable: false,
//         isExoticFruit: false,
//         isEveryDayEssential: false,
//         discprice: '52'),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/Paprica.png?alt=media&token=23ed0b90-d7f6-4ae5-a6ff-0b7f40afcfc8',
//         name: 'Paprica',
//         price: '235',
//         isEveryDayEssential: true,
//         isExoticVegetable: false,
//         isExoticFruit: false,
//         isLeafs_Herbs: false,
//         isDealofTheDay: true,
//         isCheckThisOut: true,
//         discprice: '223'),
//     Products(
//         imageUrl:
//             "https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/Lamb's%20Lettuce.png?alt=media&token=8fea6382-aec3-4f9e-a808-bd153529e03d",
//         name: "Lamb's Lettuce",
//         price: '125',
//         isLeafs_Herbs: true,
//         isExoticVegetable: false,
//         isExoticFruit: false,
//         isEveryDayEssential: false,
//         discprice: '123'),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/Peas.png?alt=media&token=fd09cfa0-95b0-4068-b59e-b65789bf6259',
//         name: 'Peas',
//         price: '24',
//         discprice: '23',
//         isEveryDayEssential: true,
//         isDealofTheDay: true,
//         isCheckThisOut: true,
//         isExoticVegetable: false,
//         isExoticFruit: false,
//         isLeafs_Herbs: false),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/Potatoes.png?alt=media&token=8c4b908e-6809-4dc3-a229-176c72393bde',
//         name: 'Potatoes',
//         price: '56',
//         discprice: '54',
//         isEveryDayEssential: true,
//         isExoticVegetable: false,
//         isExoticFruit: false,
//         isLeafs_Herbs: false),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/Pumkin.png?alt=media&token=cdbcf4e7-c7a0-495e-bdcf-8fc540d2d43f',
//         name: 'Pumkin',
//         price: '32',
//         discprice: '31',
//         isEveryDayEssential: true,
//         isExoticVegetable: false,
//         isDealofTheDay: true,
//         isCheckThisOut: true,
//         isExoticFruit: false,
//         isLeafs_Herbs: false),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/Garlic.png?alt=media&token=58b38041-5968-43a2-ae1d-ccc873d39bdb',
//         name: 'Garlic',
//         price: '80',
//         discprice: '76',
//         isEveryDayEssential: true,
//         isExoticVegetable: false,
//         isExoticFruit: false,
//         isLeafs_Herbs: false),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/Hamburg%20Parsley.png?alt=media&token=34063b31-bd55-4d0c-9cfc-ea9812237ea3',
//         name: 'Hamburg Parsley',
//         price: '236',
//         discprice: '234',
//         isEveryDayEssential: false,
//         isExoticVegetable: false,
//         isExoticFruit: false,
//         isLeafs_Herbs: true),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/French%20Beans.png?alt=media&token=7054de00-8629-44a6-ae59-c32442ab8c00',
//         name: 'French Beans',
//         price: '120',
//         discprice: '114',
//         isEveryDayEssential: true,
//         isExoticVegetable: false,
//         isExoticFruit: false,
//         isDealofTheDay: true,
//         isCheckThisOut: true,
//         isLeafs_Herbs: false),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/Endive.png?alt=media&token=b00a97a0-4fe3-402b-92cf-bb60c0efcc54',
//         name: 'Endive',
//         price: '245',
//         discprice: '234',
//         isEveryDayEssential: false,
//         isExoticVegetable: true,
//         isExoticFruit: false,
//         isDealofTheDay: true,
//         isCheckThisOut: true,
//         isLeafs_Herbs: false),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/Lettuce.png?alt=media&token=9e9c80b7-99de-4a1c-afac-1d82a5dcdc21',
//         name: 'Lettuce',
//         price: '126',
//         discprice: '122',
//         isEveryDayEssential: false,
//         isExoticVegetable: false,
//         isExoticFruit: false,
//         isDealofTheDay: true,
//         isCheckThisOut: true,
//         isLeafs_Herbs: true),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/Fennel.png?alt=media&token=673ff12f-6a4e-4953-b145-6ee70fe488fa',
//         name: 'Fennel',
//         price: '128',
//         discprice: '123',
//         isEveryDayEssential: false,
//         isExoticVegetable: false,
//         isExoticFruit: false,
//         isDealofTheDay: true,
//         isCheckThisOut: true,
//         isLeafs_Herbs: true),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/Radichio.png?alt=media&token=c3421279-ce67-43d5-8ced-75cdd6259dfe',
//         name: 'Radichio',
//         price: '70',
//         discprice: '65',
//         isEveryDayEssential: false,
//         isExoticVegetable: true,
//         isExoticFruit: false,
//         isDealofTheDay: true,
//         isCheckThisOut: true,
//         isLeafs_Herbs: false),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/Turnip.png?alt=media&token=626195b2-8fdf-4a3d-9d32-49d26bfe0094',
//         name: 'Turnip',
//         price: '96',
//         discprice: '87',
//         isEveryDayEssential: true,
//         isExoticVegetable: false,
//         isExoticFruit: false,
//         isDealofTheDay: true,
//         isCheckThisOut: true,
//         isLeafs_Herbs: false),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/Strawberry.png?alt=media&token=d050cd0d-eb1a-4174-8f23-ed3b69296279',
//         name: 'Strawberry',
//         price: '184',
//         discprice: '176',
//         isEveryDayEssential: false,
//         isExoticVegetable: false,
//         isExoticFruit: true,
//         isDealofTheDay: true,
//         isCheckThisOut: true,
//         isLeafs_Herbs: false),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/Swiss%20Chard.png?alt=media&token=3ab3424a-0b0e-427f-9024-ea16e159e9b6',
//         name: 'Swiss Chard',
//         price: '175',
//         discprice: '172',
//         isEveryDayEssential: false,
//         isExoticVegetable: true,
//         isExoticFruit: false,
//         isDealofTheDay: true,
//         isCheckThisOut: true,
//         isLeafs_Herbs: false),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/Red%20Cabbage.png?alt=media&token=ea1c514f-0d2a-4c92-8913-6bb31c9ff8d5',
//         name: 'Red Cabbage',
//         price: '19',
//         discprice: '17',
//         isEveryDayEssential: true,
//         isExoticVegetable: false,
//         isExoticFruit: false,
//         isDealofTheDay: true,
//         isCheckThisOut: true,
//         isLeafs_Herbs: false),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/Savay%20Cabbage.png?alt=media&token=91cd8f47-4d64-4826-a834-671eb93f71c9',
//         name: 'Savay Cabbage',
//         price: '35',
//         discprice: '32',
//         isEveryDayEssential: true,
//         isExoticVegetable: false,
//         isExoticFruit: false,
//         isDealofTheDay: true,
//         isCheckThisOut: true,
//         isLeafs_Herbs: false),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/Sweet%20Potatoes.png?alt=media&token=c78af445-5b1f-43d8-84c3-77e1d2efa5fa',
//         name: 'Sweet Potatoes',
//         price: '55',
//         discprice: '52',
//         isEveryDayEssential: true,
//         isExoticVegetable: false,
//         isExoticFruit: false,
//         isDealofTheDay: true,
//         isCheckThisOut: true,
//         isLeafs_Herbs: false),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/Romanesco.png?alt=media&token=6cce3f37-4598-4a53-95b2-6ed06ab87e70',
//         name: 'Romanesco',
//         price: '84',
//         discprice: '81',
//         isEveryDayEssential: false,
//         isExoticVegetable: true,
//         isDealofTheDay: true,
//         isCheckThisOut: true,
//         isExoticFruit: false,
//         isLeafs_Herbs: false),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/Tomato.png?alt=media&token=71797aac-95ab-4a66-baa7-d79418a95096',
//         name: 'Tomato',
//         price: '20',
//         discprice: '18',
//         isEveryDayEssential: true,
//         isExoticVegetable: false,
//         isExoticFruit: false,
//         isDealofTheDay: true,
//         isCheckThisOut: true,
//         isLeafs_Herbs: false),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/Spinach.png?alt=media&token=9ef90105-9fde-48ab-a5d8-943909445db7',
//         name: 'Spinach',
//         price: '45',
//         discprice: '42',
//         isEveryDayEssential: false,
//         isExoticVegetable: false,
//         isExoticFruit: false,
//         isDealofTheDay: true,
//         isCheckThisOut: true,
//         isLeafs_Herbs: true),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/Violet%20Cabbage.png?alt=media&token=e42980b4-8262-4f3f-bab3-1974d5b2601d',
//         name: 'Violet Cabbage',
//         price: '32',
//         discprice: '31',
//         isEveryDayEssential: false,
//         isExoticVegetable: true,
//         isExoticFruit: false,
//         isDealofTheDay: true,
//         isCheckThisOut: true,
//         isLeafs_Herbs: false),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/Watermelon.png?alt=media&token=b183151d-a2f7-42ea-b628-f03f585455a4',
//         name: 'Watermelon',
//         price: '36',
//         discprice: '34',
//         isEveryDayEssential: false,
//         isExoticVegetable: false,
//         isExoticFruit: true,
//         isDealofTheDay: true,
//         isCheckThisOut: true,
//         isLeafs_Herbs: false),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/White%20Radish.png?alt=media&token=a142ef0d-7610-4140-9160-6d0d6a871a37',
//         name: 'White Radish',
//         price: '64',
//         discprice: '63',
//         isEveryDayEssential: true,
//         isExoticVegetable: false,
//         isExoticFruit: false,
//         isDealofTheDay: true,
//         isCheckThisOut: true,
//         isLeafs_Herbs: false),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/Zucchini.png?alt=media&token=67c178ec-09c0-49d0-8e6a-e6f841107e1e',
//         name: 'Zucchini',
//         price: '56',
//         discprice: '55',
//         isEveryDayEssential: true,
//         isExoticVegetable: false,
//         isExoticFruit: false,
//         isDealofTheDay: true,
//         isCheckThisOut: true,
//         isLeafs_Herbs: false),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/White%20Cabbage.png?alt=media&token=ef7607ef-260f-487a-8d12-98197ed8e027',
//         name: 'White Cabbage',
//         price: '64',
//         discprice: '63',
//         isEveryDayEssential: true,
//         isExoticVegetable: false,
//         isExoticFruit: false,
//         isDealofTheDay: true,
//         isCheckThisOut: true,
//         isLeafs_Herbs: false),
//     Products(
//         imageUrl:
//             'https://firebasestorage.googleapis.com/v0/b/up-homes-72ygjg.appspot.com/o/purslane.png?alt=media&token=c74bf769-a79b-421b-868a-695a9715054d',
//         name: 'Purslane',
//         price: '53',
//         discprice: '52',
//         isEveryDayEssential: false,
//         isExoticVegetable: false,
//         isExoticFruit: false,
//         isLeafs_Herbs: true),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//                 onPressed: () async {
//                   for (var data in item) {
//                     await updateProducts(
//                       name: data.name,
//                       realPrice: data.price,
//                       discountPrice: data.discprice,
//                       imageUrl: data.imageUrl,
//                       isCitrus: data.isCitrus,
//                       isReadyToEat: data.isReadyToEat,
//                       isBeatTheHeat: data.isBeatTheHeat,
//                       isCheckThisOut: data.isCheckThisOut,
//                       isEveryDayEssential: data.isEveryDayEssential,
//                       isSummerFruit: data.isSummerFruit,
//                       isDealofTheDay: data.isDealofTheDay,
//                       isExoticFruit: data.isExoticFruit,
//                       isExoticVegetable: data.isExoticVegetable,
//                       isFreshFruit: data.isFreshFruit,
//                       isFreshMangoes: data.isFreshMangoes,
//                       isFreshVegetables: data.isFreshVegetables,
//                       isLeafs_Herbs: data.isLeafs_Herbs,
//                     );
//                   }
//                 },
//                 child: const Text('post'))
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Products {
//   final String name;
//   final String price;
//   final String discprice;
//   final String imageUrl;
//   final bool isCitrus;
//   final bool isReadyToEat;
//   final bool isBeatTheHeat;
//   final bool isCheckThisOut;
//   final bool isEveryDayEssential;
//   final bool isSummerFruit;
//   final bool isDealofTheDay;
//   final bool isExoticFruit;
//   final bool isExoticVegetable;
//   final bool isFreshFruit;
//   final bool isFreshMangoes;
//   final bool isFreshVegetables;
//   final bool isLeafs_Herbs;

//   Products({
//     this.isCitrus = false,
//     this.isReadyToEat = false,
//     this.isBeatTheHeat = false,
//     this.isCheckThisOut = false,
//     this.isEveryDayEssential = false,
//     this.isSummerFruit = false,
//     this.isDealofTheDay = false,
//     this.isExoticFruit = false,
//     this.isExoticVegetable = false,
//     this.isFreshFruit = false,
//     this.isFreshMangoes = false,
//     this.isFreshVegetables = false,
//     this.isLeafs_Herbs = false,
//     required this.name,
//     required this.price,
//     required this.discprice,
//     required this.imageUrl,
//   });
// }
