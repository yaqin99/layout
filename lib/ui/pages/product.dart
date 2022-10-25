import 'dart:math';

import 'package:flutter/material.dart';
import 'package:layout/component/bottomNavBar.dart';
import 'package:layout/ui/widgets/movieBox.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Product extends StatefulWidget {
  Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
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
    "https://cdn.popbela.com/content-images/post/20210221/1e5ca37b2cf3a85f9c1973559fd9f97d.png",
    "https://assets.promediateknologi.com/crop/0x0:0x0/x/photo/2022/03/09/1859004871.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavbar(),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 30),
            // decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 0.9,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Moh Ainul Yaqin',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                  // PersonName(person: person!),
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => const Profil(addWarna: false),
                        //   ),
                        // );
                      },
                      child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://i.pinimg.com/originals/73/64/8c/73648c6ace724660ecf3929dda928bb2.jpg'),
                          radius: 10),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            // margin: const EdgeInsets.only(top: 10),
            // decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 0.8,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Melon Napote',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  // PersonName(person: person!),
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => const Profil(addWarna: false),
                        //   ),
                        // );
                      },
                      child: const SizedBox(
                        width: 60,
                        height: 60,
                        child: FaIcon(
                          FontAwesomeIcons.circleInfo,
                          color: Colors.green,
                          size: 50,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
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
          Container(
            margin: const EdgeInsets.only(
              bottom: 70,
            ),
            // decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 0.6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                FaIcon(
                  FontAwesomeIcons.whatsapp,
                  size: 40,
                ),
                FaIcon(
                  FontAwesomeIcons.instagram,
                  size: 40,
                ),
                FaIcon(
                  FontAwesomeIcons.facebook,
                  size: 40,
                ),
                FaIcon(
                  FontAwesomeIcons.youtube,
                  size: 40,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
