import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelapp/model/profileList_model.dart';
import 'package:travelapp/view/screen/editprofile_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () => Get.back(),
              child: Icon(CupertinoIcons.back,
              ),
            ),
            Text(
              'Profile',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => EditprofileScreen()));
              },
              child: Icon(Icons.edit),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xfff7f7f9),
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
              SizedBox(height: 12,),
              Text(
                'Tanjil Alom',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              Text(
                'tanjilalom123@gmail.com',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff7d848d)),
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 5,
                      blurStyle: BlurStyle.outer
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text('Reward Point',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                        Text('360',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.blue),),
                      ],
                    ),
                    Column(
                      children: [
                        Text('Travel Trips',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                        Text('238',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.blue),),
                      ],
                    ),
                    Column(
                      children: [
                        Text('Bucket List',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                        Text('473',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.blue),),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 330,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 5,
                        blurStyle: BlurStyle.outer
                    ),
                  ],
                ),
                child: ListView.builder(
                  itemCount: profile.length,
                  itemBuilder: (context, index){
                    var itemname = profile[index];
                    return ListTile(
                      leading: Icon(itemname.icon),
                      title: Text(itemname.name),
                      trailing: Icon(itemname.icon2),
                      minTileHeight: 60,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
