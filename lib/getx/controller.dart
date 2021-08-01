import 'package:get/get.dart';
import 'package:x_launcher/model/current_response.dart';
import 'dart:convert';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

import 'package:x_launcher/utils/weather_util.dart';

class WeatherController extends GetxController {
  var currentWeatherModel = CurrentWeatherModel().obs;

  @override
  void onInit() {
    fetchApi();
    super.onInit();
  }

  Future<void> fetchApi() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best);

    final url =
        "https://api.openweathermap.org/data/2.5/weather?lat=${position.latitude}&lon=${position.longitude}&appid=$Weather_api_key";

    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final map = json.decode(response.body);
      currentWeatherModel.value = CurrentWeatherModel.fromJson(map);
    } else {
      throw Exception();
    }
  }
}

// void fetchApi() {
//   Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
//       .then((position) {
//     final url =
//         "https://api.openweathermap.org/data/2.5/weather?lat=${position.latitude}&lon=${position.longitude}&appid=$Weather_api_key";
//     http.get(Uri.parse(url)).then((response) {
//       final map = json.decode(response.body);
//       currentWeatherModel = CurrentWeatherModel.fromJson(map);
//     });
//   });
// }
