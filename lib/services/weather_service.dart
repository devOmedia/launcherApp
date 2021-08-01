import 'dart:convert';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:x_launcher/model/current_response.dart';
import 'package:x_launcher/utils/weather_util.dart';

class GetWeatherData {
  static dynamic  map;

  // static Rx<CurrentWeatherModel> fetchApi() {
  //   Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
  //       .then((position) {
  //     final url =
  //         "https://api.openweathermap.org/data/2.5/weather?lat=${position.latitude}&lon=${position.longitude}&appid=$Weather_api_key";

  //     http.get(Uri.parse(url)).then((response) {
  //       map = json.decode(response.body);
  //       return (CurrentWeatherModel.fromJson(map)) as Rx<CurrentWeatherModel>;
  //     });
  //   });
  // }
}

// static Future<dynamic> fetchApi() async {
//   Position position = await Geolocator.getCurrentPosition(
//       desiredAccuracy: LocationAccuracy.best);

//   final url =
//       "https://api.openweathermap.org/data/2.5/weather?lat=${position.latitude}&lon=${position.longitude}&appid=$Weather_api_key";

//   var response = await http.get(Uri.parse(url));
//   final map = json.decode(response.body);
//   return CurrentWeatherModel.fromJson(map);
// }
