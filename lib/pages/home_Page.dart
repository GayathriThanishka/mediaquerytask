import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    var mediaQueryHight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Media Query"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: mediaQueryWidth * 0.5,
            height: mediaQueryHight * 0.5,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: mediaQueryWidth * 0.5,
            height: mediaQueryHight * 0.4,
            color: Color.fromARGB(255, 244, 192, 3),
          ),
        ],
      ),
    );
  }
}
