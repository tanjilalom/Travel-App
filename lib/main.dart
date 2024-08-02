import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelapp/view/screen/forget_passward_screen.dart';
import 'package:travelapp/view/screen/home_screen.dart';
import 'package:travelapp/view/screen/popular_package_screen.dart';
import 'package:travelapp/view/screen/popular_places_screen.dart';
import 'package:travelapp/view/screen/profile_screen.dart';
import 'package:travelapp/view/screen/schedule_screen.dart';
import 'package:travelapp/view/screen/search_screen.dart';
import 'package:travelapp/view/screen/signin_screen.dart';
import 'package:travelapp/view/screen/signup_screen.dart';
import 'package:travelapp/view/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        fontFamily: "SF_UI_Display",
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}


class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  var _currentindex = 0;
  final pages = [
    //PopularPackageScreen(),
    HomeScreen(),
    ScheduleScreen(),
    SearchScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        //showSelectedLabels: false,
        showUnselectedLabels: true,
        selectedItemColor: Colors.blue,
        selectedFontSize: 12,
        unselectedItemColor: Colors.grey,
        unselectedFontSize: 12,

        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Icon(CupertinoIcons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.calendar), label:'Calender'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search), label:'Search'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person), label:'Profile'),
        ],
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });
        },
      ),
      body: pages[_currentindex],
    );
  }
}

