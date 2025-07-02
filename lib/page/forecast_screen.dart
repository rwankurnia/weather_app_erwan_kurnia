import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app_erwan_kurnia/my_custom_button.dart';
import 'package:weather_app_erwan_kurnia/weather.dart';
import 'package:weather_app_erwan_kurnia/dummy_weather.dart';

class ForecastScreen extends StatelessWidget {
  final String city;
  final List<Weather> forecast;

  const ForecastScreen({super.key, required this.city, required this.forecast});

  @override
  Widget build(BuildContext context) {
    final hariList = tujuhHari();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(forecast.isNotEmpty ? 'Perkiraan Cuaca 7 Hari Kota $city' : 'Tidak ada data cuaca',
                style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold)),
            MyCustomButton(),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.all(18),
                itemCount: forecast.length,
                separatorBuilder: (_, __) => const Divider(),
                itemBuilder: (context, i) {
                  final day = forecast[i];
                  return ListTile(
                    leading: Icon(day.icon, size: 32),
                    title: Text(hariList[i], style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
                    subtitle: Text(day.condition),
                    trailing: Text('${day.temperature}°C', style: const TextStyle(fontSize: 18)),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
