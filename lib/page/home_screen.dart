import 'package:flutter/material.dart';
import 'package:weather_app_erwan_kurnia/dummy_weather.dart';
import 'package:weather_app_erwan_kurnia/weather_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;

    return Scaffold(
      appBar: AppBar(title: Text('Weather App')),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text('Menu'),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/');
              },
            ),
            ListTile(
              title: Text('About'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/about', arguments: '\nAplikasi demo perkiraan cuaca sederhana. Data bersifat dummy.');
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: topPadding),
        child: Column(
          children: [
            Text('Klik Nama Kota untuk Perkiraan Cuaca 7 hari', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth <= 600) {
                    return ListView.builder(
                      itemCount: dummyWeather.length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/forecast',
                              arguments: {
                                'city': dummyWeather[index].city,
                                'forecast': dummyWeather[index].forecast ?? [],
                              },
                            );
                          },
                          child: WeatherCard(
                            weather: dummyWeather[index],
                          ),
                        ),
                      ),
                    );
                  } else {
                    return GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 4 / 3,
                        mainAxisSpacing: 12,
                        crossAxisSpacing: 12,
                      ),
                      padding: const EdgeInsets.all(16),
                      itemCount: dummyWeather.length,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/forecast',
                            arguments: {
                              'city': dummyWeather[index].city,
                              'forecast': dummyWeather[index].forecast ?? [],
                            },
                          );
                        },
                        child: WeatherCard(
                          weather: dummyWeather[index],
                        ),
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
