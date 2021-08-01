import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:x_launcher/getx/controller.dart';

class WeatherCard extends StatelessWidget {
  final WeatherController controller = Get.put(WeatherController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      try {
        return Container(
      color: Colors.red,
      height: 300,
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.snowmobile),
                      Text('Weather'),
                    ],
                  ),
                ),
                TextButton(onPressed: () {}, child: Text('more'))
              ],
            ),
          ),
          Divider(),
          Container(
            child: Row(
              children: [
                Icon(Icons.watch_later),
                Container(
                  child: Column(
                    children: [
                      Text('Barishal'),
                      Text('Mostly Cloudy'),
                      Text('Wind directions: s'),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Text(controller.currentWeatherModel.value.main!.temp.toString()),
                      Text('95/75'),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
      } catch (e) {
      return Center(
        child: CircularProgressIndicator(),
      );
      }
    });
  }
}
