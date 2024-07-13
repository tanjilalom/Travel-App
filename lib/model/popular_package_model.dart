class places_package_item {
  String image;
  String name;
  double rating;
  int price;

  places_package_item({
    required this.image,
    required this.name,
    required this.rating,
    required this.price,
  });
}

List<places_package_item> packages = [
  places_package_item(image: 'assets/1.jpg', name: 'Mermaid Beach Resort', rating: 4.9, price: 459),
  places_package_item(image: 'assets/2.jpg', name: 'Hotel Sea Queen',  rating: 4.3, price: 350),
  places_package_item(image: 'assets/3.jpg', name: 'Royal Beach Resort', rating: 4.8, price: 650),
  places_package_item(image: 'assets/4.jpg', name: 'Seagull Hotel Ltd', rating: 4.5, price: 289),
  places_package_item(image: 'assets/5.jpg', name: 'Maui Resort', rating: 4.3, price: 265),
  places_package_item(image: 'assets/6.jpg', name: 'Angel Resort & Restaurant', rating: 4.6, price: 150),

];
