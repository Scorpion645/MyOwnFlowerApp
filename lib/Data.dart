class Item {
  String itemName;
  String itemImage;
  double itemPrice;

  Item(
      {required this.itemImage,
      required this.itemName,
      required this.itemPrice});
}

List items = [
  Item(itemName: "product1", itemPrice: 12.99, itemImage: "assets/1.webp"),
  Item(itemName: "product2", itemPrice: 13.99, itemImage: "assets/2.webp"),
  Item(itemName: "product3", itemPrice: 14.99, itemImage: "assets/3.webp"),
  Item(itemName: "product4", itemPrice: 15.99, itemImage: "assets/4.webp"),
  Item(itemName: "product5", itemPrice: 16.99, itemImage: "assets/5.webp"),
  Item(itemName: "product6", itemPrice: 17.99, itemImage: "assets/6.webp"),
  Item(itemName: "product7", itemPrice: 18.99, itemImage: "assets/7.webp"),
  Item(itemName: "product8", itemPrice: 19.99, itemImage: "assets/8.webp"),
];
