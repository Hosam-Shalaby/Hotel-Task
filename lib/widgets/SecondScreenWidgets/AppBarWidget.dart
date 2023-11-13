// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
              height: 50,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(0), top: Radius.circular(20))),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 97),
                    child: Text(
                      'Rooms and Guests',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: Icon(
                      Icons.close,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            );
  }
}