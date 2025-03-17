class ScheduleItem {
  String image;
  String name;
  String date;
  String address;

  ScheduleItem({
    required this.image,
    required this.name,
    required this.date,
    required this.address,
  });
}

List<ScheduleItem> schedule = [
  ScheduleItem(name: 'Niladri Reservoir', date: '26 January 2022', address: 'Tekergat, Sunamgnj', image: 'assets/1.jpg',),
  ScheduleItem(name: 'High Rech Park', date: '26 January 2022', address: 'Zeero Point, Sylhet', image: 'assets/2.jpg'),
  ScheduleItem(name: 'Darma Reservoir', date: '26 January 2022', address: 'Darma, Kuningan', image: 'assets/3.jpg'),
  ScheduleItem(name: 'Aonang Villa Resort', date: '26 January 2022', address: 'Bastola, Islampur', image: 'assets/4.jpg'),
];
