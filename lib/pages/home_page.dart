import 'package:flutter/material.dart';
import 'package:test1/utils/routes.dart';

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
          // floatingActionButton: FloatingActionButton(
          //   onPressed: () {
          //     Navigator.pop(context , MyRoutes.loginRoute);
          //   },
          //  ))
        body : Center(
          child : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
                child: Text("My $day website on flutter by $name" ,
                 style: const TextStyle(fontSize: 40 , fontWeight: FontWeight.bold , color: Colors.blue),

        ),
              ),

        ElevatedButton(onPressed: (){
          Navigator.pop(context, MyRoutes.loginRoute);
        }, child: const Text("Back to Login Page")
          )],
          ),
      ));
  }
}