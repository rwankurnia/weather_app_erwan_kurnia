import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app_erwan_kurnia/weather.dart';

class WeatherCard extends StatelessWidget {
  final Weather weather;
  final bool isLarge;

  const WeatherCard({super.key, required this.weather, this.isLarge = false});

  @override
  Widget build(BuildContext context) {
    final double iconSize = isLarge ? 80 : 45;
    final double cityFont = isLarge ? 28 : 20;
    final double tempFont = isLarge ? 24 : 18;
    final double condFont = isLarge ? 22 : 18;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(isLarge ? 20 : 12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: isLarge ? 10 : 4,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(isLarge ? 28 : 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(weather.icon, size: iconSize),
            const SizedBox(height: 8),
            Text(weather.city, style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: cityFont)),
            Text('${weather.temperature}°C', style: TextStyle(fontSize: tempFont)),
            Text(weather.condition, style: TextStyle(fontSize: condFont)),
          ],
        ),
      ),
    );
  }
}
