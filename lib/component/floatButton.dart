import 'package:flutter/material.dart';

// import 'package:parqran/views/pengendara/qrScaning.dart';

class FLoatButton extends StatefulWidget {
  const FLoatButton({Key? key, bool visible = true}) : super(key: key);
  final bool visible = true;

  @override
  State<FLoatButton> createState() => _FLoatButtonState();
}

class _FLoatButtonState extends State<FLoatButton> {
  // QRViewController? controller;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.visible,
      child: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(46, 204, 113, 1),
        onPressed: () {
          // Navigator.push(context, MaterialPageRoute(builder: (context) {
          //   return const QrScan();
          // }));
        },
        elevation: 0,
        child: const Icon(
          Icons.qr_code_scanner,
          size: 30,
        ),
      ),
    );
  }
}
