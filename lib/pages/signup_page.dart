import 'package:flutter/material.dart';
import 'package:test1/utils/routes.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child : SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/home_page.png", fit: BoxFit.cover, height: 300,),
          const Text("Welcome to Signup Page", style: TextStyle(fontSize: 24 , fontWeight: FontWeight.bold),),
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
                decoration: const InputDecoration(
                  hintText: "Enter the Full Name",
                  labelText: "Full Name",
                  // border: OutlineInputBorder(),
                ),
              ),
            ),
            const  SizedBox(height: 20,),
            SizedBox(
              width: 300,
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "Enter the Email",
                  labelText: "Email",
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
          const  SizedBox(height: 20,),
            SizedBox(
              width: 300,
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: "Enter the Confirm Password",
                  labelText: "Confirm Password",
                  // border: OutlineInputBorder(),
                ),
              ),
            ),
          const  SizedBox(height: 40,),
          ElevatedButton(onPressed: () {Navigator.pushNamed(context, MyRoutes.loginRoute);},
           style: TextButton.styleFrom(minimumSize: const Size(100, 40)), child: const Text("Sign Up") ,),
          
           const SizedBox(height: 40,)
          
          ],
        ),
        
          ],
        ),
      )
      );
  }
}