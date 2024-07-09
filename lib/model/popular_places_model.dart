class places_item {
  String image;
  String name;
  String address;
  int price;

  places_item({
    required this.image,
    required this.name,
    required this.address,
    required this.price,
  });
}

List<places_item> places = [
  places_item(image: 'assets/1.jpg', name: 'Mermaid Beach Resort', address: "Marine Drive road, Rabeta, Ramu", price: 459),
  places_item(image: 'assets/2.jpg', name: 'Hotel Sea Queen',  address: "Jhawtala, Cox's Bazar", price: 350),
  places_item(image: 'assets/3.jpg', name: 'Royal Beach Resort', address: "Sugandha Point, Kolatali, Cox's Bazar,", price: 650),
  places_item(image: 'assets/4.jpg', name: 'Seagull Hotel Ltd', address: "Hotel Motel Zone, Sea Beach, Cox's Bazar", price: 289),
  places_item(image: 'assets/5.jpg', name: 'Maui Resort', address: "Marine Drive Road Cox's Bazar", price: 265),
  places_item(image: 'assets/6.jpg', name: 'Angel Resort & Restaurant', address: "Himchari, Cox's Bazar", price: 150),

];
