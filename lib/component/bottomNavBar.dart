import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      color: const Color.fromRGBO(46, 204, 113, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {
                      // Navigator.pushReplacement(context,
                      //     MaterialPageRoute(builder: (context) {
                      //   return MainMenu();
                      // }));
                    },
                    icon: const FaIcon(
                      FontAwesomeIcons.house,
                      color: Colors.white,
                      size: 30,
                    )),
                IconButton(
                    onPressed: () {
                      // Navigator.pushReplacement(context,
                      //     MaterialPageRoute(builder: (context) {
                      //   return DaftarMotor();
                      // }));
                    },
                    icon: const FaIcon(
                      FontAwesomeIcons.cartShopping,
                      color: Colors.white,
                      size: 30,
                    )),
                IconButton(
                    onPressed: () {
                      // Navigator.pushReplacement(context,
                      //     MaterialPageRoute(builder: (context) {
                      //   return DaftarMobil();
                      // }));
                    },
                    icon: const FaIcon(
                      FontAwesomeIcons.lemon,
                      color: Colors.white,
                      size: 30,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
