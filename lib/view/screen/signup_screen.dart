import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelapp/view/screen/signin_screen.dart';
import 'package:travelapp/view/widget/button_widget.dart';
import 'package:travelapp/view/widget/textfield_widget.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller1 = TextEditingController();
    TextEditingController controller2 = TextEditingController();
    TextEditingController controller3 = TextEditingController();

    bool isVisible = false;

    return Scaffold(
      //extendBodyBehindAppBar: true,
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
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Sign up now',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Please fill the details and create account',
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
                  height: 24,
                ),
                CustomTextfield(
                  title: 'Type your Password',
                  controller: controller3,
                  icon: CupertinoIcons.eye_slash_fill,
                  helperText: 'Password must be 8 character',
                ),
                SizedBox(
                  height: 55,
                ),
                InkWell(
                  onTap: () => Get.snackbar(
                    'Clicked',
                    'Go to SignIn page to enter the App',
                  ),
                  child: CustomButton(
                    buttonColor: Color(0xff0d6efd),
                    width: 335,
                    height: 56,
                    title: 'Sign up',
                    fontColor: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () => Get.back(),
                      /*{
                        Navigator.pushReplacement(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => SignInScreen()));
                      },*/
                      child: Text(
                        'Sign in',
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
                  height: 50,
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
    );
  }
}
