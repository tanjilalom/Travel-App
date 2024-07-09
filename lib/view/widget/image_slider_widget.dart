import 'dart:async';
import 'package:flutter/material.dart';

class CustomCarousel extends StatefulWidget {

  List<String> imagePaths;
  double? padding ;
  double? radius;
  int? durationMilisecond ;
  Color? activeColor ;
  Color? inactiveColor;

  CustomCarousel ({
    super.key,
    required this.imagePaths,
    this.padding = 0.0,
    this.radius  = 0.0,
    this.durationMilisecond = 300,
    this.activeColor = Colors.deepPurpleAccent,
    this.inactiveColor  = Colors.grey,
  });

  @override
  State<CustomCarousel> createState() => _CustomCarouselState();
}

class _CustomCarouselState extends State<CustomCarousel> {
  int _activePage = 0;
  late PageController _pageController;
  late Timer _timer;


  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _activePage);

    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_activePage < widget.imagePaths.length - 1) {
        _activePage++;
      } else {
        _activePage = 0;
      }

      _pageController.animateToPage(
        _activePage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(widget.padding!),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(widget.radius!),
                child: SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 4,
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: widget.imagePaths.length,
                    onPageChanged: (index) {
                      setState(() {
                        _activePage = index;
                      });
                    },
                    itemBuilder: (_, index) {
                      return ImagePlaceHolder(imagePath: widget.imagePaths[index]);
                    },
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 0,
                right: 0,
                child: Container(
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      widget.imagePaths.length,
                          (index) => Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: InkWell(
                          onTap: () {
                            _pageController.animateToPage(
                              index,
                              duration: Duration(milliseconds: widget.durationMilisecond!),
                              curve: Curves.easeInOut,
                            );
                          },
                          child: CircleAvatar(
                            radius: 4,
                            backgroundColor: _activePage == index ? widget.activeColor : widget.inactiveColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ImagePlaceHolder extends StatelessWidget {
  const ImagePlaceHolder({super.key, required this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      fit: BoxFit.cover,
    );
  }
}