import 'package:flutter/material.dart';

import '../utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = "";
  bool changeButton = false ;

  @override
  Widget build(BuildContext context) {

    return Material(
      child : SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/home_page.png", fit: BoxFit.cover, height: 300,),
         const Text("Welcome to Login Page", style: TextStyle(fontSize: 24 , fontWeight: FontWeight.bold),),
          const SizedBox(height: 10,),
          Text(name, style: const TextStyle(fontSize: 24 , fontWeight: FontWeight.bold),),
        const SizedBox(height: 20,),
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
                onChanged: (value) {
                  name = value ;
                setState(() {});
                },
                
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

            InkWell(
        
              onTap: (() async {
                setState(() {
                  changeButton = true ;
                });

                await Future.delayed(const Duration(seconds: 2));
                 // ignore: use_build_context_synchronously
                 Navigator.pushNamed(context, MyRoutes.homeRoute);
              }),
              child: AnimatedContainer(
                duration: const Duration(seconds: 2),
                alignment: Alignment.center,
                width: changeButton ? 50 : 95,
                height: 35 ,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  // shape: changeButton ? BoxShape.circle : BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(changeButton ? 50 : 10),
                ),
                
                child: changeButton ? const Icon(Icons.done, color : Colors.white) :  const Text("Login" , style : TextStyle(fontSize: 15 , color: Colors.white)),
              ),
            ),

          // ElevatedButton(onPressed: () {Navigator.pushNamed(context, MyRoutes.homeRoute);},
          //  style: TextButton.styleFrom(minimumSize: const Size(100, 40)), child: const Text("Login") ,),
          
          ],
        ),
        
          ],
        ),
      )
      );
  }


}