class CatalogModel {
 static final items = [
    Item(
      id : 1,
      name : "iphone 12 Pro max",
      desc : "Apple iphone 12 Generation",
      price : 2000,
      color : "#33505a",
      image : "assets/images/login_page.png",
      ),
  ];
}

class Item {
  final int id ;
  final String name ;
  final String desc ;
  final num price ;
  final String color ;
  final String image ;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}