import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contoh Layout Flutter',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil Pengguna')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Foto Profil
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/avatar.png'), // Ganti dengan gambar kamu
            ),
            const SizedBox(height: 20),
            
            // Nama dan Email
            const Text(
              'Hanif Zyen',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              'hanifzyen@email.com',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 30),

            // Informasi Lain dalam Card
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: const [
                    Icon(Icons.phone, color: Colors.teal),
                    SizedBox(width: 12),
                    Text('+62 812 3456 7890'),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 10),

            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: const [
                    Icon(Icons.location_on, color: Colors.teal),
                    SizedBox(width: 12),
                    Expanded(child: Text('Jepara, Jawa Tengah, Indonesia')),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
