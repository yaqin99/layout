import 'package:division/division.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:layout/ui/style/style.dart';
import 'package:flutter/material.dart';

class MovieBox extends StatelessWidget {
  final String? url;
  final double? scale;
  MovieBox({this.url, this.scale = 1});
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Parent(
          style: parentStyle.clone()
            ..background.image(url: url, fit: BoxFit.cover)
            ..width(200 * scale!)
            ..height(300 * scale!)),
      Positioned(
          bottom: 0,
          left: 0,
          child: Container(
            padding: const EdgeInsets.only(left: 10),
            margin: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            width: 170 * scale!,
            height: 50 * scale!,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  'Pembibitan Cabe',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  '27 Agustus 2022',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
                )
              ],
            ),
          ))
    ]);
  }
}
