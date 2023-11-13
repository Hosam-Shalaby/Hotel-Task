// ignore_for_file: prefer_typing_uninitialized_variables, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectRoomWidget extends StatefulWidget {
  const SelectRoomWidget({super.key});

  @override
  State<SelectRoomWidget> createState() => _SelectRoomWidgetState();
}

class _SelectRoomWidgetState extends State<SelectRoomWidget> {
  var selectedCountry;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 9),
      width: 300.w,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(18)),
      child: DropdownButtonFormField(
        hint: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(' 1 Room, 2 Adult, 0 Children',
              style: TextStyle(color: Colors.blue)),
        ),
        items: const ['USA', 'UAE', 'EGY']
            .map((e) => DropdownMenuItem(
                  value: e,
                  child: Text(
                    'Country $e',
                    style: const TextStyle(color: Colors.blue),
                  ),
                ))
            .toList(),
        onChanged: (value) {
          setState(() {
            selectedCountry = value;
          });
        },
        value: selectedCountry,
      ),
    );
  }
}
