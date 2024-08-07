import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelapp/main.dart';
import 'package:travelapp/view/screen/home_screen.dart';
import 'package:travelapp/view/screen/signup_screen.dart';
import 'package:travelapp/view/widget/button_widget.dart';
import 'package:travelapp/view/widget/textfield_widget.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller1 = TextEditingController();
    TextEditingController controller2 = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          onPressed: () => Get.back(),
          child: Icon(CupertinoIcons.back),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xfff7f7f9),
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Sign in now',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Please sign in to continue our app',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 55,
                  ),
                  CustomTextfield(
                    title: 'Type Your Name here',
                    controller: controller1,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  CustomTextfield(
                    title: 'Type Your Email here',
                    controller: controller2,
                  ),
                  SizedBox(
                    height: 72,
                  ),
                  InkWell(
                    onTap: (){
                      Get.snackbar('Clicked', 'SignIn Button Clicked');
                      Navigator.push(
                          context, CupertinoPageRoute(builder: (context) => BottomNavBarScreen()),);
                    },
                    child: CustomButton(
                      buttonColor: Color(0xff0d6efd),
                      width: 335,
                      height: 56,
                      radius: 12,
                      title: 'Sign in',
                      fontColor: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
            
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t have an account?',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => SignupScreen()));
                        },
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff0d6efd),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Or connect',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          'assets/icons/facebook.png',
                          fit: BoxFit.cover,
                          height: 44,
                          width: 44,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          'assets/icons/instagram.png',
                          fit: BoxFit.cover,
                          height: 44,
                          width: 44,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          'assets/icons/twitter.png',
                          fit: BoxFit.cover,
                          height: 44,
                          width: 44,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}