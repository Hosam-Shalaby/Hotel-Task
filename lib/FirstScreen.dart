// ignore_for_file: file_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hoteltask/widgets/FirstScreenWidgets/DateRangeWidget.dart';
import 'package:hoteltask/widgets/FirstScreenWidgets/FindHotelButton.dart';
import 'package:hoteltask/widgets/FirstScreenWidgets/SelectCityWidget.dart';
import 'package:hoteltask/widgets/FirstScreenWidgets/SelectNationaltyWidget.dart';
import 'package:hoteltask/widgets/FirstScreenWidgets/SelectRoomWidget.dart';
import 'package:hoteltask/widgets/FirstScreenWidgets/TitleWidget.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              SizedBox(
                  // padding: const EdgeInsets.all(8),
                  height: 600.h,
                  child: Image.asset('assets/images/attachment3.webp',
                      fit: BoxFit.fill)),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 3, vertical: 220),
                child: Column(
                  children: [
                    const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [TitleWidget()])),
                    Container(
                        padding: const EdgeInsets.all(0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: const LinearGradient(colors: [
                              Color.fromARGB(255, 27, 133, 231),
                              Color.fromARGB(255, 28, 187, 250)
                            ])),
                        child: Column(children: [
                          SizedBox(height: 10.h),
                          const SelectCityWidget(),
                          const DateRangeWidget(),
                          const SelectNationaltyWidget(),
                          SizedBox(height: 10.h),
                          const SelectRoomWidget(),
                          SizedBox(height: 10.h),
                          const FindHotelButton(),
                        ])),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
