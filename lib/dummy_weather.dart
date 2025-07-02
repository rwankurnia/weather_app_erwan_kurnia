import 'package:weather_icons/weather_icons.dart';
import 'package:weather_app_erwan_kurnia/weather.dart';

List<String> hari = [
  'Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu', 'Minggu'
];

List<String> tujuhHari() {
  final now = DateTime.now();
  int hariIni = now.weekday - 1;
  return List.generate(7, (i) => hari[(hariIni + i) % 7]);
}

final List<Weather> dummyWeather = [
  Weather(
    city: 'Palembang',
    condition: 'Stormy',
    temperature: 29.7,
    icon: WeatherIcons.thunderstorm,
    forecast: [
      Weather(city: 'Palembang', condition: 'Stormy', temperature: 29.7, icon: WeatherIcons.thunderstorm),
      Weather(city: 'Palembang', condition: 'Berawan', temperature: 28, icon: WeatherIcons.cloudy),
      Weather(city: 'Palembang', condition: 'Hujan', temperature: 27, icon: WeatherIcons.rain),
      Weather(city: 'Palembang', condition: 'Cerah', temperature: 32, icon: WeatherIcons.day_sunny),
      Weather(city: 'Palembang', condition: 'Mendung', temperature: 30, icon: WeatherIcons.cloud),
      Weather(city: 'Palembang', condition: 'Gerimis', temperature: 29, icon: WeatherIcons.showers),
      Weather(city: 'Palembang', condition: 'Badai', temperature: 26, icon: WeatherIcons.thunderstorm),
    ],
  ),
  Weather(
    city: 'Jakarta',
    condition: 'Sunny',
    temperature: 33.3,
    icon: WeatherIcons.day_sunny,
    forecast: [
      Weather(city: 'Jakarta', condition: 'Sunny', temperature: 33.3, icon: WeatherIcons.day_sunny),
      Weather(city: 'Jakarta', condition: 'Berawan', temperature: 32, icon: WeatherIcons.cloudy),
      Weather(city: 'Jakarta', condition: 'Hujan', temperature: 31, icon: WeatherIcons.rain),
      Weather(city: 'Jakarta', condition: 'Cerah', temperature: 36, icon: WeatherIcons.day_sunny),
      Weather(city: 'Jakarta', condition: 'Mendung', temperature: 34, icon: WeatherIcons.cloud),
      Weather(city: 'Jakarta', condition: 'Gerimis', temperature: 33, icon: WeatherIcons.showers),
      Weather(city: 'Jakarta', condition: 'Badai', temperature: 30, icon: WeatherIcons.thunderstorm),
    ],
  ),
  Weather(
    city: 'Bandung',
    condition: 'Cloudy',
    temperature: 23.4,
    icon: WeatherIcons.cloudy,
    forecast: [
      Weather(city: 'Bandung', condition: 'Cloudy', temperature: 23.4, icon: WeatherIcons.cloudy),
      Weather(city: 'Bandung', condition: 'Berawan', temperature: 22, icon: WeatherIcons.cloudy),
      Weather(city: 'Bandung', condition: 'Hujan', temperature: 21, icon: WeatherIcons.rain),
      Weather(city: 'Bandung', condition: 'Cerah', temperature: 26, icon: WeatherIcons.day_sunny),
      Weather(city: 'Bandung', condition: 'Mendung', temperature: 24, icon: WeatherIcons.cloud),
      Weather(city: 'Bandung', condition: 'Gerimis', temperature: 23, icon: WeatherIcons.showers),
      Weather(city: 'Bandung', condition: 'Badai', temperature: 20, icon: WeatherIcons.thunderstorm),
    ],
  ),
  Weather(
    city: 'Surabaya',
    condition: 'Rainy',
    temperature: 27.9,
    icon: WeatherIcons.rain,
    forecast: [
      Weather(city: 'Surabaya', condition: 'Rainy', temperature: 27.9, icon: WeatherIcons.rain),
      Weather(city: 'Surabaya', condition: 'Berawan', temperature: 27, icon: WeatherIcons.cloudy),
      Weather(city: 'Surabaya', condition: 'Hujan', temperature: 26, icon: WeatherIcons.rain),
      Weather(city: 'Surabaya', condition: 'Cerah', temperature: 31, icon: WeatherIcons.day_sunny),
      Weather(city: 'Surabaya', condition: 'Mendung', temperature: 29, icon: WeatherIcons.cloud),
      Weather(city: 'Surabaya', condition: 'Gerimis', temperature: 28, icon: WeatherIcons.showers),
      Weather(city: 'Surabaya', condition: 'Badai', temperature: 25, icon: WeatherIcons.thunderstorm),
    ],
  ),
];
