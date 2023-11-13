// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoomDetailsWidget extends StatelessWidget {
  const RoomDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 23),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.white),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              children: [
                Text(
                  'ROOM 1',
                  textAlign: TextAlign.start,
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 11.sp),
                ),
              ],
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text('Adults'),
            const Spacer(),
            Container(
              height: 30.h,
              width: 40.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(55),
                  border: Border.all(
                    color: Colors.blue,
                  )),
              child: Center(
                  child: Text(
                '-',
                style: TextStyle(color: Colors.blue, fontSize: 24.sp),
              )),
            ),
            const Padding(
              padding: EdgeInsets.all(13.0),
              child: Text('4'),
            ),
            Container(
                height: 30.h,
                width: 40.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(55),
                    border: Border.all(
                      color: const Color.fromARGB(255, 210, 232, 250),

                      // color: Colors.blue,
                    )),
                child: Center(
                    child: Text(
                  '+',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 191, 221, 245),
                      fontSize: 24.sp),
                  // style: TextStyle(color: Colors.blue, fontSize: 24),
                )))
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text('Children'),
            const Spacer(),
            Container(
              height: 30.h,
              width: 40.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(55),
                  border: Border.all(
                    color: Colors.blue,
                  )),
              child: Center(
                  child: Text(
                '-',
                style: TextStyle(color: Colors.blue, fontSize: 24.sp),
              )),
            ),
            const Padding(
              padding: EdgeInsets.all(13.0),
              child: Text('2'),
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
                  child: Text(
                '+',
                style: TextStyle(color: Colors.blue, fontSize: 24.sp),
              )),
            ),
          ]),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  'Age of child 1',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  '14 years',
                  style: TextStyle(color: Colors.black38),
                )
              ],
            ),
          ),
          const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(children: [
                Text('Age of child 2',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Spacer(),
                Text('14 years', style: TextStyle(color: Colors.black38))
              ]))
        ]));
  }
}
