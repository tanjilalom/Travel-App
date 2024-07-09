import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/model/popular_places_model.dart';

class PopularPlacesScreen extends StatelessWidget {
  const PopularPlacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Popular Places',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
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
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'All Popular Places',
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
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: MediaQuery.of(context).size.width /
                        (MediaQuery.of(context).size.height / 1.4),
                    mainAxisSpacing: 10.0),
                itemCount: places.length,
                itemBuilder: (BuildContext context, int index) {
                  var itemname = places[index];
                  return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {},
                      //onTap: () => Get.to(Vegetables()),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffffffff),
                          border: Border.all(
                            color: Color(0xffD9D0E3),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                // Image border
                                child: SizedBox.fromSize(
                                  child: Image.asset(
                                    itemname.image,
                                    height: 124,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 16.0, right: 10.0),
                              child: Text(
                                itemname.name,
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 16.0, right: 10.0),
                              child: Text(
                                itemname.address.toString(),
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff7d848d)),
                              ),
                            ),
                            SizedBox(height: 5),
                            Padding(
                              padding: EdgeInsets.only(left: 16.0, right: 10.0),
                              child: Text(
                                '\$' + itemname.price.toString() + '/Person',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              ),
                            ),
                            SizedBox(
                              height: 10,
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
