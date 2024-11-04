import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BIODATA DIRI',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: Colors.blue[900],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/images/foto.profil.jpg'), // Ganti dengan path gambar Anda
                  ),
                  SizedBox(height: 15),
                  Text(
                    'SHERLY AZ-ZAHRA\n42230057',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Teknologi Informasi',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.teal[100],
                      letterSpacing: 1.0,
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Nama Saya Sherly Az-Zahra mahasiswi Universitas Pendidikan Nasional, dengan NIM 42230057 dari Program Studi Teknologi Informasi. Saya percaya bahwa pendidikan adalah investasi terbaik yang dapat kita berikan kepada diri sendiri. Saya sebagai pelajar ingin lebih bersemangat lagi untuk menjalankan perkuliahan pada semester 5 saat ini, dalam mengeksplorasi ilmu pengetahuan yang luas, dan tentunya bersemangat untuk meraih cita-cita.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.teal[100],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 30),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Skills',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: [
                      skillItem('Flutter'),
                      skillItem('UI/UX Design'),
                      skillItem('Database'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget skillItem(String skill) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(Icons.check, color: Colors.teal[100], size: 20),
          SizedBox(width: 8),
          Expanded(
            child: Text(
              skill,
              style: TextStyle(
                fontSize: 16,
                color: Colors.teal[100],
              ),
            ),
          ),
        ],
      ),
    );
  }
}