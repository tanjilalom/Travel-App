class PopularPlacesItems {
  String image;
  String name;
  String address;
  int price;

  PopularPlacesItems({
    required this.image,
    required this.name,
    required this.address,
    required this.price,
  });
}

List<PopularPlacesItems> places = [
  PopularPlacesItems(image: 'assets/1.jpg', name: 'Mermaid Beach Resort', address: "Marine Drive road, Rabeta, Ramu", price: 459),
  PopularPlacesItems(image: 'assets/2.jpg', name: 'Hotel Sea Queen',  address: "Jhawtala, Cox's Bazar", price: 350),
  PopularPlacesItems(image: 'assets/3.jpg', name: 'Royal Beach Resort', address: "Sugandha Point, Kolatali, Cox's Bazar,", price: 650),
  PopularPlacesItems(image: 'assets/4.jpg', name: 'Seagull Hotel Ltd', address: "Hotel Motel Zone, Sea Beach, Cox's Bazar", price: 289),
  PopularPlacesItems(image: 'assets/5.jpg', name: 'Maui Resort', address: "Marine Drive Road Cox's Bazar", price: 265),
  PopularPlacesItems(image: 'assets/6.jpg', name: 'Angel Resort & Restaurant', address: "Himchari, Cox's Bazar", price: 150),

];
