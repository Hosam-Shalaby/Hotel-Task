// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hoteltask/widgets/SecondScreenWidgets/AppBarWidget.dart';
import 'package:hoteltask/widgets/SecondScreenWidgets/ButtonWidget.dart';
import 'package:hoteltask/widgets/SecondScreenWidgets/RoomDetailsWidget.dart';
import 'package:hoteltask/widgets/SecondScreenWidgets/RoomsWidget.dart';
import 'package:hoteltask/widgets/SecondScreenWidgets/SwitchWidget.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 550.h,
        decoration: const BoxDecoration(
            color: Color.fromARGB(221, 207, 205, 205),
            borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(0), top: Radius.circular(0))),
        child: Column(children: [
          const AppBarWidget(),
          Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(height: 20.h),
            const RoomsWidget(),
            SizedBox(height: 10.h),
            const RoomDetailsWidget(),
            SizedBox(height: 10.h),
            const SwitchWidget(),
            SizedBox(height: 100.h),
            const ButtonWidget(),
            SizedBox(height: 5.h),
          ])
        ]));
  }
}
