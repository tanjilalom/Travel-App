import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelapp/view/screen/home_screen.dart';
import 'package:travelapp/view/screen/onboard_screen/onboard_page2.dart';
import 'package:travelapp/view/screen/popular_places_screen.dart';
import 'package:travelapp/view/screen/signin_screen.dart';

class OnboardPage1 extends StatelessWidget {
  const OnboardPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  child: Image.asset(
                    'assets/1.jpg',
                    height: 444,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 30,
                  right: 20,
                  child: InkWell(
                    onTap: ()=> Navigator.push(
                        context, CupertinoPageRoute(builder: (context) => SignInScreen(),)),
                    child: const Text(
                      'Skip',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffCAEAFF)),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 309,
              height: 72,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Life is short and the world is ',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,

                      ),
                    ),
                    TextSpan(
                      text: 'wide',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.orange,

                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 72,
              width: 303,
              child: Text(
                'At Friends tours and travel, we customize reliable and trutworthy educational tours to destinations all over the world',
              ),
            ),
            SizedBox(height: 100,),
            Container(
              height: 56,
              width: 335,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Color(0xff0D6EFD),
              ),
              child: InkWell(
                onTap: ()=> Navigator.push(
                    context, CupertinoPageRoute(builder: (context) => const OnboardPage2(),)),
                child: const Text('Get Started',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,

                  ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
