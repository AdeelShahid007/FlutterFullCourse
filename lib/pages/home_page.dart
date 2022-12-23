import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final String day = "first";
  final String name = 'Hacker';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Center(child: Text("DDOS Hacker Provider")),
        actions: const [
          Center(child: Icon(Icons.add_a_photo_outlined))
        ],
      ),
        body : Center(
          child : Text("My $day program on flutter by $name" ,
           style: const TextStyle(fontSize: 40 , fontWeight: FontWeight.bold , color: Colors.blue),)
        )
      );
  }
}