import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: EtkilesimOrnegi()));
}

// PARÇA 1: Widget'ın Dış Kabuğu (Değişmez kısım)
class EtkilesimOrnegi extends StatefulWidget {
  const EtkilesimOrnegi({super.key});
  @override
  State<EtkilesimOrnegi> createState() => _EtkilesimOrnegiState();
}

// PARÇA 2: State (Durum) - Beyin Kısmı (Değişen kısım burasıdır)
class _EtkilesimOrnegiState extends State<EtkilesimOrnegi> {
  int sayi = 0;
  bool geceModu = false;

  void temaDegistir() {
    setState(() {
      geceModu = !geceModu;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tıkla ve Gör"), backgroundColor: Colors.teal),

      backgroundColor: geceModu == true ? Colors.black : Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Butona basılma sayısı:",
              style: TextStyle(
                fontSize: 20,
                color: geceModu ? Colors.white : Colors.black,
              ),
            ),

            Text(
              "$sayi",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: geceModu ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: temaDegistir,
        backgroundColor: Colors.teal,
        child: Icon(Icons.brightness_6),
      ),
    );
  }
}
