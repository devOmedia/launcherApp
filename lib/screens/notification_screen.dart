import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:x_launcher/screens/weather/weather_card.dart';
import 'package:x_launcher/utils/getTIme.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white60,
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 0.5,
                sigmaY: 0.5,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade200.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: TextField(
                  cursorColor: Colors.grey.shade500,
                  decoration: InputDecoration(
                    fillColor: Colors.grey,
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.record_voice_over),
                    hintText: 'Search',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                child: Column(
                  children: [
                    //TimeAndDate(), // geting current time and date
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: WeatherCard(),
            )
          ],
        ),
      ),
    ));
  }
}
