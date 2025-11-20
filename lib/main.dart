import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("İlk Sıfır Kodum"),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // 1. PROFİL FOTOĞRAFI YERİ
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.brown.shade100,
                child: Icon(Icons.person, size: 50, color: Colors.brown),
              ),

              SizedBox(height: 20),

              // 2. İSİM YERİ
              Text(
                "Abdullah Erten",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                ),
              ),

              // 3. MESLEK YERİ
              Text(
                "FLUTTER DEVELOPER",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey.shade700,
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(color: Colors.brown.shade100),
              ),

              // 4. TELEFON KARTI
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(Icons.phone, color: Colors.brown),
                  title: Text(
                    "+90 555 555 55 55",
                    style: TextStyle(
                      color: Colors.brown.shade900,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),

              // 5. E-POSTA KARTI
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(Icons.email, color: Colors.brown),
                  title: Text(
                    'aaa@example.com',
                    style: TextStyle(
                      color: Colors.brown.shade900,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
