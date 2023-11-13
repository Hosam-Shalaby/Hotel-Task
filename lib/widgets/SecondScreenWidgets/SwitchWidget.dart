// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool notify = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 23),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        width: 320.w,
        height: 55.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.white),
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 80, top: 10),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Text(
                    'Pet-friendly  ',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.error_outline_outlined)
                ]),
              ),
              Text(
                'Only show stays that allow pets',
                style: TextStyle(color: Colors.black54, fontSize: 13.sp),
              )
            ],
          ),
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
                  child: Switch(
                      value: notify,
                      onChanged: (value) {
                        setState(() {
                          notify = value;
                        });
                      })))
        ]));
  }
}
