import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../utils/assets.dart';

class BannerSlider extends StatefulWidget {
  const BannerSlider({Key? key}) : super(key: key);

  @override
  State<BannerSlider> createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {
  int _current = 0;
  final CarouselController _controller = CarouselController();


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Builder(builder: (context) {
          final double width = MediaQuery.of(context).size.width;
          return CarouselSlider(
              carouselController: _controller,
              options: CarouselOptions(
                viewportFraction: 1,
                autoPlay: true,
                aspectRatio: 1.5,
                enlargeCenterPage: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                },
              ),
              items: banner.map((name) => SizedBox(width: width, child: Image.asset(name, fit: BoxFit.cover))).toList());
        }),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: banner.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                    width: 18.0,
                    height: _current == entry.key ? 3.0 : 2.0,
                    margin: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 4.0),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(2), color: _current == entry.key ? Colors.amber : Colors.grey)),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
