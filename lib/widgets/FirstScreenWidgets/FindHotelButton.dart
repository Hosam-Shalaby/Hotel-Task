// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hoteltask/SecondScreen.dart';

class FindHotelButton extends StatelessWidget {
  const FindHotelButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
              top: Radius.circular(0),
            ),
            color: Color.fromARGB(239, 247, 163, 6)),
        height: 40.h,
        width: 330.w,
        child: GestureDetector(
            onTap: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return const SecondScreen();
                  });
            },
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text('find hotels ',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 15.sp)),
              const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Icon(Icons.search, color: Colors.white, size: 35))
            ])));
  }
}
