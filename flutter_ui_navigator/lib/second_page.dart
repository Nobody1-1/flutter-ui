import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman Kedua')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Kembali ke Halaman Utama'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
