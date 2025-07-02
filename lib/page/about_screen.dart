import 'package:flutter/material.dart';
import 'package:weather_app_erwan_kurnia/my_custom_button.dart';

class AboutScreen extends StatelessWidget {
  final String? message;
  const AboutScreen({this.message, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text(
                'Tentang Aplikasi \n $message',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 36),
              MyCustomButton(),
            ],
          ),
        ),
      ),
    );
  }
}
