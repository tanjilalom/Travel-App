import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 44,
                  child: Row(
                    children: [
                      CircleAvatar(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset('assets/1.jpg', fit: BoxFit.cover, height: 44, width: 44,),
                        ),
                      ),
                      Text(' Tanjil', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),)
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Icon(CupertinoIcons.bell),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xfff7f7f9),
                  ),
                ),
              ],
            ),
            Container(
              width: 300,
              height: 100,
              child: Text('Explore the Beautiful world!', style: TextStyle(fontSize: 38, fontWeight: FontWeight.w300),),
            ),
            SizedBox(height: 30,),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Best Destination'),
                  Text('View all'),
                ],
              ),
            ),
            /*CustomCarousel(
              imagePaths: ['assets/1.jpg', 'assets/2.jpg', 'assets/3.jpg'],)*/
          ],
        ),
      ),
    );
  }
}