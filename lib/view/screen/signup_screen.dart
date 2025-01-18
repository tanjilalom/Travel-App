import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelapp/view/widget/button_widget.dart';
import 'package:travelapp/view/widget/textfield_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Controllers for the text fields
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(CupertinoIcons.back, color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Sign up now',
                  style: TextStyle(

                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Please fill the details and create an account',
                  style: TextStyle(

                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 55),

                // Name Field
                CustomTextfield(
                  title: 'Type Your Name here',
                  controller: nameController,
                ),
                const SizedBox(height: 24),

                // Email Field
                CustomTextfield(
                  title: 'Type Your Email here',
                  controller: emailController,
                ),
                const SizedBox(height: 24),

                // Password Field
                CustomTextfield(
                  title: 'Type your Password',
                  controller: passwordController,
                  icon: CupertinoIcons.eye_slash_fill,
                  helperText: 'Password must be 8 characters',
                ),
                const SizedBox(height: 50),

                // Sign Up Button
                InkWell(
                  onTap: () => Get.snackbar(
                    'Clicked',
                    'Go to Sign In page to enter the app',
                  ),
                  child: const CustomButton(
                    buttonColor: Color(0xff0d6efd),
                    width: 335,
                    height: 56,
                    title: 'Sign up',
                    fontColor: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 40),

                // Already Have an Account
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account?',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(width: 10),
                    InkWell(
                      onTap: () => Get.back(),
                      child: const Text(
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
                const SizedBox(height: 20),

                // Or Connect
                const Text(
                  'Or connect',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 50),

                // Social Media Icons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildSocialIcon('assets/icons/google.png'),
                    _buildSocialIcon('assets/icons/instagram.png'),
                    _buildSocialIcon('assets/icons/twitter.png'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSocialIcon(String assetPath) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: Image.asset(
        assetPath,
        fit: BoxFit.cover,
        height: 44,
        width: 44,
      ),
    );
  }
}
