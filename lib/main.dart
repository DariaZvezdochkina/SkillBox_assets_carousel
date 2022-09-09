// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/svg.dart';

// Project imports:
import 'package:assets_skillbox_3/carousel.dart';

void main() {
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final String assetName = 'lib/assets/previous.svg';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: ListView(
        children: [
          const DestinationCarousel(),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 37, right: 37),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  assetName,
                  height: 80,
                  width: 80,
                  fit: BoxFit.scaleDown,
                ),
                SvgPicture.network(
                  'https://www.svgrepo.com/show/88210/next.svg',
                  height: 80,
                  width: 80,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
