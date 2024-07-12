class scheduleModel {
  String image;
  String name;
  String date;
  String address;

  scheduleModel({
    required this.image,
    required this.name,
    required this.date,
    required this.address,
  });
}

List<scheduleModel> schedule = [
  scheduleModel(name: 'Niladri Reservoir', date: '26 January 2022', address: 'Tekergat, Sunamgnj', image: 'assets/1.jpg',),
  scheduleModel(name: 'High Rech Park', date: '26 January 2022', address: 'Zeero Point, Sylhet', image: 'assets/2.jpg'),
  scheduleModel(name: 'Darma Reservoir', date: '26 January 2022', address: 'Darma, Kuningan', image: 'assets/3.jpg'),
  scheduleModel(name: 'Aonang Villa Resort', date: '26 January 2022', address: 'Bastola, Islampur', image: 'assets/4.jpg'),
];
