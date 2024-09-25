import 'package:flutter/material.dart';

// class SampleListview extends StatelessWidget {
//   const SampleListview({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Dashboard"),
//         actions: const [],
//       ),
//       body: ListView(
//         padding: EdgeInsets.all(10),
//         children: [
//           Container(
//             color: Colors.purple,
//             height: 100,
//           ),
//           Container(
//             color: const Color.fromARGB(255, 195, 72, 216),
//             height: 100,
//           ),
//           Container(
//             color: const Color.fromARGB(255, 240, 156, 255),
//             height: 100,
//           ),
//           Container(
//             color: Colors.purple,
//             height: 100,
//             margin: EdgeInsets.only(top: 10),
//           ),
//           Container(
//             color: const Color.fromARGB(255, 195, 72, 216),
//             height: 100,
//           ),
//           Container(
//             color: const Color.fromARGB(255, 240, 156, 255),
//             height: 100,
//           ),
//           Container(
//             color: Colors.purple,
//             height: 100,
//             margin: EdgeInsets.only(top: 10),
//           ),
//           Container(
//             color: const Color.fromARGB(255, 195, 72, 216),
//             height: 100,
//           ),
//           Container(
//             color: const Color.fromARGB(255, 240, 156, 255),
//             height: 100,
//           ),
//         ],
//       ),
//     );
//   }
// }

class SampleListview extends StatelessWidget {
  SampleListview({super.key});

  final List colorCodes = [900, 800, 700, 600, 500, 400, 300, 200, 100];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(20),
        itemBuilder: (context, index) {
          return Container(
            color: Colors.purple[colorCodes[index]],
            height: 100,
          );
        },
        itemCount: colorCodes.length,
      ),
    );
  }
}
