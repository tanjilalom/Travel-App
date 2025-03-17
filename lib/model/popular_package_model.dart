class PopularPackagesItems {
  String image;
  String name;
  double rating;
  int price;

  PopularPackagesItems({
    required this.image,
    required this.name,
    required this.rating,
    required this.price,
  });
}

List<PopularPackagesItems> packages = [
  PopularPackagesItems(image: 'assets/1.jpg', name: 'Mermaid Beach Resort', rating: 4.9, price: 459),
  PopularPackagesItems(image: 'assets/2.jpg', name: 'Hotel Sea Queen',  rating: 4.3, price: 350),
  PopularPackagesItems(image: 'assets/3.jpg', name: 'Royal Beach Resort', rating: 4.8, price: 650),
  PopularPackagesItems(image: 'assets/4.jpg', name: 'Seagull Hotel Ltd', rating: 4.5, price: 289),
  PopularPackagesItems(image: 'assets/5.jpg', name: 'Maui Resort', rating: 4.3, price: 265),
  PopularPackagesItems(image: 'assets/6.jpg', name: 'Angel Resort & Restaurant', rating: 4.6, price: 150),

];
