import 'package:flutter/material.dart';
import 'menu.dart'; // Import file menu.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mental Health Tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Ubah warna utama sesuai kebutuhan
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.blueAccent, // Warna sekunder
        ),
      ),
      home: MyHomePage(), // Mengatur halaman awal
    );
  }
}
