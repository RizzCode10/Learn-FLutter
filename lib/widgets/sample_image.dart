import 'package:flutter/material.dart';

class SampleImage extends StatelessWidget {
  const SampleImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Belajar Widget Image"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network('https://picsum.photos/200/150'), //Ini adalah Tampilan aslinya
          Container(
            margin: EdgeInsets.all(5),
            height: 400,
            width: 400,
            decoration: BoxDecoration(border: Border.all()),
            child: Image.network(
                'https://picsum.photos/200/150',
                alignment: Alignment.center,
                color: const Color.fromARGB(255, 255, 216, 97),
                colorBlendMode: BlendMode.softLight,
                fit: BoxFit.contain,
                ), //ini adalah link untuk mengambil foto secara random dari sosmed
          )
        ],
      ),
    );
  }
}
