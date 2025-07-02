import 'package:flutter/material.dart';
import 'package:weather_app_erwan_kurnia/page/about_screen.dart';
import 'package:weather_app_erwan_kurnia/page/forecast_screen.dart';
import 'package:weather_app_erwan_kurnia/page/home_screen.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/forecast': (context) {
          final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
          return ForecastScreen(city: args['city'], forecast: args['forecast']);
        },
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/about') {
          final String message = settings.arguments as String;
          return MaterialPageRoute(builder: (context) => AboutScreen(message: message));
        }
        return null;
      },
      title: 'Weather App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
      ),
      // home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
