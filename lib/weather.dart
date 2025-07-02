import 'package:flutter/material.dart';

class Weather {
  final String city;
  final String condition;
  final double temperature;
  final IconData icon;
  final List<Weather>? forecast;

  Weather({
    required this.city,
    required this.condition,
    required this.temperature,
    required this.icon,
    this.forecast,
  });
}


