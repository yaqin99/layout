import 'dart:math';

import 'package:flutter/material.dart';
import 'package:layout/component/bottomNavBar.dart';
import 'package:layout/ui/widgets/movieBox.dart';

class MainPage extends StatefulWidget {
  MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  double currentScroll = 0;
  PageController controller =
      PageController(initialPage: 0, viewportFraction: 0.6);

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        currentScroll = controller.page!;
      });
    });
  }

  List<String> film = [
    "https://shopee.co.id/inspirasi-shopee/wp-content/uploads/2021/07/featured-image-cara-menanam-melon.webp",
    "https://agribisnis.co.id/wp-content/uploads/2016/04/cabe.png",
    "https://cdn.popbela.com/content-images/post/20210221/1e5ca37b2cf3a85f9c1973559fd9f97d.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavbar(),
      appBar: AppBar(
        title: const Text('Main Page'),
      ),
      body: Container(
        child: PageView.builder(
            controller: controller,
            itemCount: film.length,
            itemBuilder: (context, index) {
              double difference = index - currentScroll;
              if (difference < 0) {
                difference *= -1;
              }
              difference = min(difference, 1);
              return Center(
                child: GestureDetector(
                  onTap: () {
                    print('clicked');
                  },
                  child: MovieBox(
                    url: film[index],
                    scale: 1 - (difference * 0.3),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
