import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/view/screen/signup_screen.dart';
import 'package:travelapp/view/widget/button_widget.dart';
import 'package:travelapp/view/widget/textfield_widget.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController controller = TextEditingController();
    final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
    bool isTrack = false;


    return Scaffold(
      //extendBodyBehindAppBar: true,
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
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Sign in now',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                ),
                Text(
                  'Please sign in to continue our app',
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
                CustomTextfield(
                  controller: TextEditingController(),
                  isBorder: true,
                  borderColor: Colors.black,
                  isPasswordField: true,
                  isRequired: true,
                  isSuffixIcon: true,
                  icon: Icons.password,
                  inputFontSize: 16,
                  hint: 'Enter your Password',
                  hintFontSize: 14,
                  liveErrorMessage: 'Enter The Correct Password ',
                  isLiveErrorTrack: true,
                  isError: isTrack,
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return '*Required';
                    }
                  },
                ),
                CustomButton(
                  isBorder: false,
                  onTap: () {
                    if (_formkey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Colors.red,
                        content: Text("Something went wrong"),
                        duration: Duration(seconds: 2),
                        behavior: SnackBarBehavior.floating,
                        action: SnackBarAction(label: "OK", onPressed: () {}),
                      ));
                    }
                  },
                  buttonStyle: CustomButtonStyle.one,
                  buttonColor: Color(0xff0d6efd),
                  width: 335,
                  height: 56,
                  title: 'Sign in',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have an account?',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));
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
                Text(
                  'Or connect',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset('assets/1.jpg', fit: BoxFit.cover, height: 44, width: 44,),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset('assets/1.jpg', fit: BoxFit.cover, height: 44, width: 44,),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset('assets/1.jpg', fit: BoxFit.cover, height: 44, width: 44,),
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
