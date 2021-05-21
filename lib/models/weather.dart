import 'package:weather/models/location.dart';
import 'package:weather/models/networking.dart';
const token = '21249ce59d1b608ad144043305ae2e2d';

class WeatherModel {

  Future<dynamic> getCityWeather(String cityName) async {
    NetworkHelper network = NetworkHelper(url: 'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$token&units=metric');
    var weatherData = await network.getData();
    return weatherData;
  }

  Future<dynamic> getLocationWeather() async {
    Location location = Location();
    await location.getCurrentLocation();




    NetworkHelper network = NetworkHelper(url: 'https://api.openweathermap.org/data/2.5/weather?lat=${location.latitude}&lon=${location.longitude}&appid=$token&units=metric');
    var weatherData = await network.getData();
    return weatherData;
  }