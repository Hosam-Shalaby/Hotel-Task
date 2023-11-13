// ignore_for_file: prefer_typing_uninitialized_variables, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectNationaltyWidget extends StatefulWidget {
  const SelectNationaltyWidget({super.key});

  @override
  State<SelectNationaltyWidget> createState() => _SelectNationaltyWidgetState();
}

class _SelectNationaltyWidgetState extends State<SelectNationaltyWidget> {
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
          padding: EdgeInsets.only(left: 30),
          child:
              Text('Select Nationalty', style: TextStyle(color: Colors.blue)),
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
