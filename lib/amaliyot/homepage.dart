import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lesson-34"),
        centerTitle: true,
      ),

      //****************************************************************************************
      //?Lesson3
      // body: Stack(
      //   children: [
      //     Positioned(
      //       bottom: 0,
      //       left: 0,
      //         child: ElevatedButton(
      //       onPressed: () {},
      //       child: const Text("Button"),
      //     )),
      //     Positioned(
      //       bottom: 0,
      //         right: 0,
      //         child: ElevatedButton(
      //           onPressed: () {},
      //           child: const Text("Button"),
      //         ))
      //   ],
      // ),
      //***********************************************************************************************
      //?Lesson2
      // body: Center(
      //   child: Stack(
      //       children: [
      //         Text("world", style: TextStyle(
      //           fontSize: 22
      //         ),),
      //         Text("Hello", style: TextStyle(
      //             fontSize: 40,
      //             color: Colors.red
      //         ),),
      //       ],
      //   ),
      // )
//******************************************************************************************************
    //?Lesson1
      // body: Container(
      //   color: Colors.red,
      //   child: const Stack(
      //     children: [
      //       Positioned(
      //           right: 0,
      //           child: CircleAvatar(
      //             backgroundColor: Colors.blue,
      //           )),
      //       Align(
      //         alignment: Alignment.center,
      //         child: CircleAvatar(
      //           backgroundColor: Colors.yellow,
      //         ),
      //       )
      //     ],
      //   ),
      // )
      // );
    );
  }
}
