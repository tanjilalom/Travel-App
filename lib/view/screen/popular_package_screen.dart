import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelapp/model/popular_package_model.dart';

class PopularPackageScreen extends StatelessWidget {
  const PopularPackageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Popular Package',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        leading: SizedBox(),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'All Popular Trip Package',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xff2D0C57),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: packages.length,
                itemBuilder: (BuildContext context, int index) {
                  var itemname = packages[index];
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: InkWell(
                      onTap: () {
                        /* Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => ));*/
                      },
                      //() => Get.to(Veginfo()),
                      child: Container(
                        height: 140,
                        width: 335,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade100,
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(
                                itemname.image,
                                fit: BoxFit.cover,
                                height: 116,
                                width: 95,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: 20, left: 15, right: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          itemname.name,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                            color: Color(0xff1B1E28),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.calendar_month_outlined,
                                              size: 16,
                                              color: Color(0xff7D848D),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              '16 July-28 July',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 13,
                                                color: Color(0xff7D848D),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              size: 15,
                                              color: Color(0xffFFD336),
                                            ),
                                            Icon(
                                              Icons.star,
                                              size: 15,
                                              color: Color(0xffFFD336),
                                            ),
                                            Icon(
                                              Icons.star,
                                              size: 15,
                                              color: Color(0xffFFD336),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              itemname.rating.toString(),
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 13,
                                                color: Color(0xff7D848D),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 50,
                                              child: Stack(
                                                alignment: AlignmentDirectional.topStart,
                                                children: [
                                                  Positioned(
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50),
                                                      child: Image.asset(
                                                        'assets/1.jpg',
                                                        fit: BoxFit.cover,
                                                        height: 24,
                                                        width: 24,
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 12,
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50),
                                                      child: Image.asset(
                                                        'assets/2.jpg',
                                                        fit: BoxFit.cover,
                                                        height: 24,
                                                        width: 24,
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 24,
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50),
                                                      child: Image.asset(
                                                        'assets/3.jpg',
                                                        fit: BoxFit.cover,
                                                        height: 24,
                                                        width: 24,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Text(
                                              '24 Person Joined',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 13,
                                                color: Color(0xff7D848D),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional.topEnd,
                                      child: Container(
                                        width: 44,
                                        height: 26,
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Center(
                                            child: Text(
                                          "\$" + itemname.price.toString(),
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white),
                                        )),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
