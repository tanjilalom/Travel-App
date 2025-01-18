import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/view/screen/signin_screen.dart';

class OnboardPage3 extends StatelessWidget {
  const OnboardPage3({super.key});

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
                    'assets/3.jpg',
                    height: 444,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 30,
                  right: 20,
                  child: InkWell(
                    onTap: () => Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const SignInScreen(),
                        )),
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
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 309,
              height: 72,
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'People don’t take trips, trips take ',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontFamily: 'SF_UI_Display',
                      ),
                    ),
                    TextSpan(
                      text: 'peoples',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.orange,
                        fontFamily: 'SF_UI_Display',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              height: 72,
              width: 303,
              child: Text(
                'At Friends tours and travel, we customize reliable and trutworthy educational tours to destinations all over the world',
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 56,
              width: 335,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color(0xff0D6EFD),
              ),
              child: InkWell(
                onTap: () => Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const SignInScreen(),
                    )),
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontFamily: 'SF_UI_Display',
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
