import 'package:flutter/material.dart';

IconData weatherIcon(String? weatherType) {
  switch (weatherType) {
    case 'clear sky':
      return Icons.sunny;
    case 'shower rain' || 'rain' || 'Rain':
      return Icons.water_drop_sharp;
    case 'few clouds' || 'scattered clouds' || 'broken clouds' || 'Clouds':
      return Icons.cloud;
    case 'Snow' || 'snow':
      return Icons.snowing;
    case 'thunderstorm':
      return Icons.thunderstorm_rounded;
    default:
      return Icons.error;
  }
}
