import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:weather/weather.dart';

class WeatherRepo {
  WeatherFactory wf = WeatherFactory(dotenv.env['OPEN_WEATHER_API_KEY'] ?? '');
  Future<Weather> getWeather(double lat, double long) async {
    Weather w = await wf.currentWeatherByLocation(lat, long);
    return w;
  }
}
