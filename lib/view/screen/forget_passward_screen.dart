import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/view/widget/button_widget.dart';
import 'package:travelapp/view/widget/textfield_widget.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {},
          child: Icon(CupertinoIcons.back),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xfff7f7f9),
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
              Text(
                'Forgot password',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
              ),
              Text(
                'Enter your email account to reset  your password',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              CustomTextfield(
                  controller: TextEditingController(),
                  isBorder: true,
                  borderColor: Colors.black,
                  hint: 'Enter your Email Address',
                  hintFontSize: 14,
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return '*Required';
                    }
                  }),
              CustomButton(
                isBorder: false,
                onTap: () {},
                buttonStyle: CustomButtonStyle.one,
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
