import 'package:flutter/material.dart';
import '../Widgets/my_drawer.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Center(child: Text("DDOS Hacker Provider")),
        actions: const [
          Center(child: Icon(Icons.add_a_photo_outlined))
        ],
      ),

        body : Center(
          child : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(
                height: 100,
                child: Text("Welcome to Setting Page" ,
                 style: TextStyle(fontSize: 40 , fontWeight: FontWeight.bold , color: Colors.blue),

        ),
              ),]
          ),
      ));
  }
}