// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DateRangeWidget extends StatelessWidget {
  const DateRangeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60.h,
        width: 300.w,
        padding: const EdgeInsets.all(9),
        margin: const EdgeInsets.all(14),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(18)),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              border: Border.all(
                color: Colors.blue,
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  '2023 -11-10 ==> 2023-11-11',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp,
                    color: Colors.blue,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Spacer(),
              const Padding(
                padding: EdgeInsets.only(right: 9),
                child: Icon(
                  Icons.close_outlined,
                  color: Colors.black45,
                ),
              )
            ],
          ),
        ));
  }
}
