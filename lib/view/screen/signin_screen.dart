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
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(CupertinoIcons.back, color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Sign in now',
                  style: TextStyle(

                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Please sign in to continue our app',
                  style: TextStyle(

                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 55),
                CustomTextfield(
                  title: 'Type Your Name here',
                  controller: nameController,
                ),
                const SizedBox(height: 24),
                CustomTextfield(
                  title: 'Type Your Email here',
                  controller: emailController,
                ),
                const SizedBox(height: 72),
                InkWell(
                  onTap: () {
                    Get.snackbar('Clicked', 'SignIn Button Clicked');
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => BottomNavBarScreen(),
                      ),
                    );
                  },
                  child: CustomButton(
                    buttonColor: const Color(0xff0d6efd),
                    width: double.infinity,
                    height: 56,
                    radius: 12,
                    title: 'Sign in',
                    fontColor: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don’t have an account?',
                      style: TextStyle(

                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(width: 10),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => SignupScreen(),
                          ),
                        );
                      },
                      child: const Text(
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
                const SizedBox(height: 20),
                const Text(
                  'Or connect',
                  style: TextStyle(

                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ClipOval(
                      child: Image.asset(
                        'assets/icons/google.png',
                        fit: BoxFit.cover,
                        height: 44,
                        width: 44,
                      ),
                    ),
                    ClipOval(
                      child: Image.asset(
                        'assets/icons/instagram.png',
                        fit: BoxFit.cover,
                        height: 44,
                        width: 44,
                      ),
                    ),
                    ClipOval(
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
    );
  }
}
