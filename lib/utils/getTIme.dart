import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimeAndDate extends StatefulWidget {
  const TimeAndDate({Key? key}) : super(key: key);

  @override
  _TimeAndDateState createState() => _TimeAndDateState();
}

class _TimeAndDateState extends State<TimeAndDate> {
  var currentTime = DateFormat.jm().format(DateTime.now());
  final currentDate = DateFormat.yMMMMd('en_US').format(DateTime.now());
  var currentMinute;
  var previousMinute;
  
  @override
  void initState() {
    setTimer();
    super.initState();
  }

//call setstate repitadely after the minute change
  void setTimer() => Timer.periodic(Duration(seconds: 1), (timer) {
        currentMinute = DateTime.now().minute;
        previousMinute = DateTime.now().add(Duration(seconds: -1)).minute;

        if (currentMinute - previousMinute == 1)
          setState(() {
            currentTime = DateFormat.jm().format(DateTime.now());
          });
      });

//stop the timer.
  // @override
  // void dispose() {
  //   setTimer();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
//split the string by the space as a list of 2 item, we use 0th index
          '${currentTime.split(" ")[0]}',
          style: TextStyle(
            fontSize: 60.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          currentDate,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}
