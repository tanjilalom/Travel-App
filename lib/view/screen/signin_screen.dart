import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelapp/main.dart';
import 'package:travelapp/view/screen/signup_screen.dart';
import 'package:travelapp/view/widget/button_widget.dart';
import 'package:travelapp/view/widget/textfield_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    super.dispose();
  }

  void _handleSignIn() {
    if (_formKey.currentState!.validate()) {
      Get.snackbar('Success', 'Signed in successfully!');
      Get.to(() => const BottomNavBarScreen(), transition: Transition.cupertino);
    }
  }

  @override
  Widget build(BuildContext context) {
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
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Sign in now',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 10),
              const Text(
                'Please sign in to continue our app',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
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
              const SizedBox(height: 50),
              SizedBox(
                width: double.infinity,
                child: CustomButton(
                  buttonColor: const Color(0xff0d6efd),
                  height: 56,
                  radius: 12,
                  title: 'Sign in',
                  fontColor: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  onTap: _handleSignIn,
                ),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don’t have an account?',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () => Get.to(() => const SignupScreen(), transition: Transition.rightToLeft),
                    child: const Text(
                      'Sign up',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff0d6efd)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text('Or connect', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
              const SizedBox(height: 40),

              // Social Media Icons
              _buildSocialIcons(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSocialIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildSocialIcon('assets/icons/google.png'),
        _buildSocialIcon('assets/icons/instagram.png'),
        _buildSocialIcon('assets/icons/twitter.png'),
      ],
    );
  }

  Widget _buildSocialIcon(String assetPath) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onTap: () => Get.snackbar('Social Login', 'Clicked on ${assetPath.split('/').last.split('.').first}'),
        child: ClipOval(
          child: Image.asset(assetPath, fit: BoxFit.cover, height: 44, width: 44),
        ),
      ),
    );
  }
}
