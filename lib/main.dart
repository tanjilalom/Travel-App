import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelapp/view/screen/forget_passward_screen.dart';
import 'package:travelapp/view/screen/home_screen.dart';
import 'package:travelapp/view/screen/popular_places_screen.dart';
import 'package:travelapp/view/screen/schedule_screen.dart';
import 'package:travelapp/view/screen/signin_screen.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SignInScreen(),
    );
  }
}