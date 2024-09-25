import 'package:flutter/material.dart';

class SampleContainer extends StatelessWidget {
  const SampleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(10),
      height: 300,
      width: 400,
      // color: Colors.cyan, // Apabila menginginkan adanya box decoration maka color harus dimasukan kedalamnya agar tidak terjadi error
      decoration: BoxDecoration(
        color: Colors.cyan,
        border: Border.all(width: 4, color: const Color.fromARGB(255, 76, 78, 175)),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
      ),
      child: const Text('Selamat belajar Continer, dan belajar widget-widget lainnya tetap semangat!!'),
    );
  }
}