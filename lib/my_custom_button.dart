import 'package:flutter/material.dart';

class MyCustomButton extends StatelessWidget {
  const MyCustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: const Icon(Icons.arrow_back),
      label: const Text('Kembali ke Halaman sebelumnya'),
      onPressed: () => Navigator.pop(context),
    );
  }
}