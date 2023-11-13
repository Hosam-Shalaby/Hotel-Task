// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: MyCustomClipper(),
        child: Container(
            decoration: const BoxDecoration(color: Colors.blue),
            height: 50,
            width: 190,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: const Text(
              'Hotels Search',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            )));
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height - 0.0); // تحديد الجهة المقصوصة
    path.lineTo(80, size.height - 90.0); // تحديد الجهة المقصوصة
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
