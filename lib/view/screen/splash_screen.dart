import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travelapp/main.dart';
import 'package:travelapp/view/screen/home_screen.dart';
import 'package:travelapp/view/screen/onboard_screen/onboard_page1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => OnboardPage1()));
    });
  }

  @override
  void dispose() {
    super.dispose();
    // TODO: implement dispose
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0D6EFD),
      body: Center(
        child: Text(
          'Travel Guide',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 34,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
