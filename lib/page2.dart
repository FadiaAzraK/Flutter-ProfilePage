import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              // Foto Profil
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/pp.jpg'),
                ),
              ),
              SizedBox(height: 24),

              // Nama
              Center(
                child: Text(
                  'Fadia Azra Kadarisman',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 16),

              // Bagian About
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.grey[850],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Saya seorang pelajar di SMK Wikrama Bogor berjurusan PPLG (Pengembangan Perangkat Lunak Dan Gim). '
                          'Saya memiliki pengalaman dalam pengembangan web dan manajemen proyek selama saya bersekolah dan melaksanakan PKL.',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),

              // Bagian History
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.grey[850],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'History',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Saya memiliki pengalaman mengerjakan berbagai proyek, seperti pengembangan web. '
                          'Saya juga pernah melaksanakan PKL di PT LSKK, di mana saya mendapatkan pengalaman dalam manajemen proyek, '
                          'serta di sana saya menjadi back-end developer.',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),

              // Bagian Skills
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.grey[850],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Skills',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '• React',
                      style: TextStyle(color: Colors.white70),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '• Laravel',
                      style: TextStyle(color: Colors.white70),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '• Express.js',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}