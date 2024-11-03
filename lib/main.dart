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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/sherly.jpeg'), // Ganti dengan path gambar Anda
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
                'WEB Developer',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue[100],
                  letterSpacing: 1.0,
                ),
              ),
              Divider(
                height: 30,
                thickness: 1,
                indent: 40,
                endIndent: 40,
                color: Colors.blue[100],
              ),
              contactInfo(Icons.email, 'sherlyazzahra983@gmail.com'),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  'Nama Saya Sherly Az-Zahra mahasiswi Universitas Pendidikan Nasional, dengan NIM 42230057 dari Program Studi Teknologi Informasi. Saya percaya bahwa pendidikan adalah investasi terbaik yang dapat kita berikan kepada diri sendiri. Saya sebagai pelajar ingin lebih bersemangat lagi untuk menjalankan perkuliahan saat ini, dalam mengeksplorasi ilmu pengetahuan yang luas, dan tentunya bersemangat untuk meraih cita-cita.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue[100],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Skills',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              skillItem('Flutter'),
              skillItem('UI/UX Design'),
              skillItem('Database'),
              SizedBox(height: 30),
              Text(
                'Find me on',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue[100],
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  socialIcon(Icons.facebook, 'https://facebook.com'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget contactInfo(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.blue[100], size: 20),
          SizedBox(width: 10),
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              color: Colors.blue[100],
            ),
          ),
        ],
      ),
    );
  }

  Widget skillItem(String skill) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Text(
        skill,
        style: TextStyle(
          fontSize: 16,
          color: Colors.teal[100],
        ),
      ),
    );
  }

  Widget socialIcon(IconData icon, String url) {
    return IconButton(
      icon: Icon(icon, color: Colors.blue[100], size: 30),
      onPressed: () {
        // Tambahkan fungsi untuk membuka URL
      },
    );
  }
}
