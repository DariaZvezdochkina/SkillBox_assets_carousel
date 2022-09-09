// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';

class DestinationCarousel extends StatefulWidget {
  const DestinationCarousel({super.key});

  @override
  State<DestinationCarousel> createState() => _DestinationCarouselState();
}

class _DestinationCarouselState extends State<DestinationCarousel> {
  int _current = 0;

  final List<String> images = [
    'lib/assets/Black-Iphone.jpg',
    'lib/assets/Blue-Iphone.jpg',
    'lib/assets/Pink-Iphone.jpeg',
  ];

  final List<String> memory = [
    '128GB',
    '256GB',
    '512GB',
    '1TB',
  ];

  List<Widget> generateImages() {
    return images
        .map(
          (element) => ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              element,
              fit: BoxFit.cover,
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 100),
      child: Stack(children: [
        CarouselSlider(
          items: generateImages(),
          options: CarouselOptions(
              enlargeCenterPage: true,
              autoPlay: true,
              autoPlayInterval: const Duration(
                seconds: 4,
              ),
              aspectRatio: 20 / 17,
              onPageChanged: ((index, reason) {
                setState(() {
                  _current = index;
                });
              })),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 37, right: 37, top: 300),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: Colors.grey.shade400),
            height: 50,
            width: 300,
            child: Text(
              memory[_current],
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.width / 10,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ]),
    );
  }
}
