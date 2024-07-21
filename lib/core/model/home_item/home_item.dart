class Item {
  final bool isLeafsHerbs;
  final bool isFreshFruit;
  final bool isFreshVegetables;
  final bool isExoticVegetable;
  final bool isExoticFruit;
  final String name;
  final bool isEveryDayEssential;
  final bool isBeatTheHeat;
  final String offer;
  final bool isFreshMangoes;
  final String description;
  final String imageUrl;
  final String realPrice;
  final bool isDealOfTheDay;
  final String discountPrice;
  final bool isSummerFruit;
  final bool isCheckThisOut;
  final bool isCitrus;
  final bool isReadyToEat;

  Item({
    required this.isLeafsHerbs,
    required this.isFreshFruit,
    required this.isFreshVegetables,
    required this.isExoticVegetable,
    required this.isExoticFruit,
    required this.name,
    required this.isEveryDayEssential,
    required this.isBeatTheHeat,
    required this.offer,
    required this.isFreshMangoes,
    required this.description,
    required this.imageUrl,
    required this.realPrice,
    required this.isDealOfTheDay,
    required this.discountPrice,
    required this.isSummerFruit,
    required this.isCheckThisOut,
    required this.isCitrus,
    required this.isReadyToEat,
  });

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      isLeafsHerbs: map['isLeafs_Herbs'] ?? false,
      isFreshFruit: map['isFreshFruit'] ?? false,
      isFreshVegetables: map['isFreshVegetables'] ?? false,
      isExoticVegetable: map['isExoticVegetable'] ?? false,
      isExoticFruit: map['isExoticFruit'] ?? false,
      name: map['name'] ?? '',
      isEveryDayEssential: map['isEveryDayEssential'] ?? false,
      isBeatTheHeat: map['isBeatTheHeat'] ?? false,
      offer: map['offer'] ?? '0',
      isFreshMangoes: map['isFreshMangoes'] ?? false,
      description: map['description'] ?? '',
      imageUrl: map['imageUrl'] ?? '',
      realPrice: map['realPrice'] ?? '0',
      isDealOfTheDay: map['isDealofTheDay'] ?? false,
      discountPrice: map['discountPrice'] ?? '0',
      isSummerFruit: map['isSummerFruit'] ?? false,
      isCheckThisOut: map['isCheckThisOut'] ?? false,
      isCitrus: map['isCitrus'] ?? false,
      isReadyToEat: map['isReadyToEat'] ?? false,
    );
  }
}
