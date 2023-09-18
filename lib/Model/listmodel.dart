class FudCategory {
  final List<String> name;
  final List<String> items;
  final List<String> img;
  final List<String> rate;

  FudCategory({
    required this.items,
    required this.name,
    required this.img,
    required this.rate,
  });
}

List<FudCategory> categorylist = [
  FudCategory(items: [
    'Cheesy Mozarella',
    'Double Beef',
    'Cheesy Mozarella',
    'Double Beef'
  ], name: [
    'Beef Burger',
    'Double Burger',
    'Beef Burger',
    'Double Burger'
  ], img: [
    "assets/burger.png",
    "assets/brgr.png",
    "assets/burger.png",
    "assets/brgr.png",
  ], rate: [
    ' 6.58',
    ' 7.79',
    ' 6.58',
    ' 7.79',
  ]),
  FudCategory(items: [
    "Cheesy Mozarella",
    "Barbeque Chicken",
    "Double cheese",
    "Cheese"
  ], name: [
    'Chicken pizza',
    'Cheesy pizza',
    "BBQ Pizza",
    'Chicken pizza'
  ], img: [
    "assets/pizza.png",
    "assets/pizza.png",
    "assets/pizza.png",
    "assets/pizza.png"
  ], rate: [
    ' 6.58',
    ' 7.79',
    ' 6.58',
    ' 7.79',
  ]),
  FudCategory(items: [
    "Cheese",
    "Barbeque Chicken",
    "Beef Burger",
    "Cheese"
  ], name: [
    'Beef Sandwich',
    'Double Sandwich',
    'Beef Sandwich',
    'Double Sandwich'
  ], img: [
    "assets/sandwich.png",
    "assets/sandwich.png",
    "assets/sandwich.png",
    "assets/sandwich.png"
  ], rate: [
    ' 6.58',
    ' 7.79',
    ' 6.58',
    ' 7.79',
  ]),
  FudCategory(items: [
    "Cheese",
    "Barbeque Chicken",
    "Beef Burger",
    "Cheese"
  ], name: [
    'Beef Hotdog',
    'Double Hotdog',
    'Beef Hotdog',
    'Double Hotdog'
  ], img: [
    "assets/hotdog.png",
    "assets/hotdog.png",
    "assets/hotdog.png",
    "assets/hotdog.png"
  ], rate: [
    ' 6.58',
    ' 7.79',
    ' 6.58',
    ' 7.79',
  ]),
];

class ItemCategory {
  final String name;
  final String imge;
  ItemCategory({
    required this.name,
    required this.imge,
  });
}

List<ItemCategory> itemlist = [
  ItemCategory(name: 'Burger', imge: "assets/burger.png"),
  ItemCategory(name: 'Pizza', imge: "assets/pizza.png"),
  ItemCategory(name: 'Sandwich', imge: 'assets/sandwich.png'),
  ItemCategory(name: 'Hotdog', imge: 'assets/hotdog.png')
];
