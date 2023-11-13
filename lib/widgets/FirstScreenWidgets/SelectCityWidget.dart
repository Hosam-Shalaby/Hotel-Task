// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectCityWidget extends StatelessWidget {
  const SelectCityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50.h,
        width: 300.w,
        padding: const EdgeInsets.all(7),
        margin: const EdgeInsets.all(4),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(22)),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(19),
              border: Border.all(
                color: const Color.fromARGB(255, 183, 202, 218),
              )),
          child: Center(
            child: Text(
              'Select city',
              style: TextStyle(
                fontSize: 16.sp,
                color: const Color.fromARGB(255, 27, 133, 231),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ));
  }
}
