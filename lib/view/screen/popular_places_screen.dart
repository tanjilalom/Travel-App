import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelapp/model/popular_places_model.dart';

class PopularPlacesScreen extends StatelessWidget {
  const PopularPlacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Popular Places',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () => Get.back(),
          child: const Icon(CupertinoIcons.back),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'All Popular Places',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xff2D0C57),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: screenWidth / (screenHeight / 1.4),
                  mainAxisSpacing: 10.0,
                ),
                itemCount: places.length,
                itemBuilder: (BuildContext context, int index) {
                  var place = places[index]; // Corrected variable here
                  return _buildPlaceItemCard(place); // Pass 'place' instead of 'places'
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPlaceItemCard(PopularPlacesItems place) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => Get.snackbar('Clicked', place.name), // Corrected to 'place.name'
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            border: Border.all(color: const Color(0xffD9D0E3)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    place.image, // Corrected to 'place.image'
                    height: 124,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              _buildText(place.name, 14, FontWeight.w600),
              _buildText(place.address, 12, FontWeight.w400, color: const Color(0xff7d848d)),
              const SizedBox(height: 5),
              _buildText('\$${place.price}/Person', 12, FontWeight.w400),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildText(String text, double fontSize, FontWeight fontWeight, {Color color = Colors.black}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Text(
        text,
        style: TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
