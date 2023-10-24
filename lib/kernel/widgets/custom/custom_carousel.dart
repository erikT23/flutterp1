import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/kernel/themes/Colors_app.dart';

class CustomCarousel extends StatefulWidget {
  final List<Widget> itemList;
  final double carouselHeight;
  final double indicatorHeight;
  final double indicatorWidth;
  // ignore: use_key_in_widget_constructors
  const CustomCarousel(
      {Key? key,
      required this.itemList,
      this.carouselHeight = 150,
      this.indicatorHeight = 20,
      this.indicatorWidth = 10});

  @override
  State<CustomCarousel> createState() => _CustomCarouselState();
}

class _CustomCarouselState extends State<CustomCarousel> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
            items: widget.itemList,
            options: CarouselOptions(
                height: widget.carouselHeight,
                autoPlay: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                })),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.itemList.map((item) {
            int index = widget.itemList.indexOf(item);
            return Container(
              width: widget.indicatorWidth,
              height: widget.indicatorHeight,
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 3.0),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: _currentIndex == index
                    ? ColorsApp.successColor
                    : ColorsApp.primaryColor,
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}
