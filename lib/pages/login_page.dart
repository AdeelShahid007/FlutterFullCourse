import 'package:flutter/material.dart';
import 'package:test1/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child : SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/home_page.png", fit: BoxFit.cover, height: 300,),
          const Text("Welcome to Login Page", style: TextStyle(fontSize: 24 , fontWeight: FontWeight.bold),),
        const SizedBox(height: 40,),
        Column(
          children: [
            SizedBox(
              width: 300,
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "Enter the User Name",
                  labelText: "User Name",
                  // border: OutlineInputBorder(),
                ),
              ),
            ),
          const  SizedBox(height: 20,),
            SizedBox(
              width: 300,
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: "Enter the Password",
                  labelText: "Password",
                  // border: OutlineInputBorder(),
                ),
              ),
            ),
          const  SizedBox(height: 40,),
          ElevatedButton(onPressed: () {Navigator.pushNamed(context, MyRoutes.homeRoute);},
           style: TextButton.styleFrom(minimumSize: const Size(100, 40)), child: const Text("Login") ,),
          
          ],
        ),
        
          ],
        ),
      )
      );
  }
}