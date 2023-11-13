// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoomsWidget extends StatelessWidget {
  const RoomsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 23),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        width: 320.w,
        height: 55.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.white),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text('Rooms'),
          const Spacer(),
          Container(
            height: 30.h,
            width: 40.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(55),
                border: Border.all(
                  color: const Color.fromARGB(255, 210, 232, 250),
                )),
            child: Center(
                child: Text(
              '-',
              style: TextStyle(
                  color: const Color.fromARGB(255, 191, 221, 245),
                  fontSize: 24.sp),
            )),
          ),
          const Padding(
            padding: EdgeInsets.all(13.0),
            child: Text('1'),
          ),
          Container(
              height: 30.h,
              width: 40.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(55),
                  border: Border.all(
                    color: Colors.blue,
                  )),
              child: Center(
                  child: Text('+',
                      style: TextStyle(color: Colors.blue, fontSize: 24.sp))))
        ]));
  }
}
