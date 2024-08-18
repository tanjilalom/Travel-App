import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditprofileScreen extends StatefulWidget {
  const EditprofileScreen({super.key});

  @override
  State<EditprofileScreen> createState() => _EditprofileScreenState();
}

class _EditprofileScreenState extends State<EditprofileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            Text(
              'Edit Profile',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            InkWell(
              onTap: () => Get.back(),
              child: Icon(
                CupertinoIcons.back,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  'assets/1.jpg',
                  fit: BoxFit.cover,
                  height: 100,
                  width: 100,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Tanjil Alom',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              Text(
                'Change Profile Picture',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff0D6EFD)),
              ),
              SizedBox(
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
