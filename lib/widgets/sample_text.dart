import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SampleText extends StatelessWidget {
  const SampleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Widget Text'),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: 300,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: const Text('Ayo Kita belajar Text Widget bareng bareng, pada tanggal 10 september 2053 di di Kota Nusantara'),
          ),

          Container(
            height: 200,
            width: 300,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: const Text(
              '''Ayo Kita belajar Text Widget bareng bareng, pada tanggal 10 september 2053 di di Kota Nusantara''',
              textAlign: TextAlign.justify, // FUntuk mengatur format text mau Rata Kiri, Rata Tengah Rata Kanan atau justify
              // overflow: TextOverflow.ellipsis, // Apabila Text terlalu panjang maka akan menyngkat dan menambahkan titik-titik di belakangnya
              overflow: TextOverflow.clip,
              textScaleFactor: 1,
              style: TextStyle(
                color: Colors.amber,
                fontSize: 15,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline,
                decorationColor: Colors.cyan,
                decorationStyle: TextDecorationStyle.wavy,
                letterSpacing: 10,
                wordSpacing: 2,
              ), 
            ),
          ),
        ],
      ),
    );
  }
}