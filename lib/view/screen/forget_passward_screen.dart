import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelapp/view/widget/button_widget.dart';
import 'package:travelapp/view/widget/textfield_widget.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Get.back(),
          child: const Icon(
            CupertinoIcons.back,
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Forgot password',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
              ),
              const Text(
                'Enter your email account to reset  your password',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              CustomTextfield(
                title: '',
                controller: TextEditingController(),
                /*controller: TextEditingController(),
                  hint: 'Enter your Email Address',
                  hintFontSize: 14,*/
              ),
              const CustomButton(
                buttonColor: Color(0xff0d6efd),
                width: 335,
                height: 56,
                title: 'Sign in',
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
