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

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
   if( _formKey.currentState!.validate()){

    setState(() {
      changeButton = true ;
        });  
     await Future.delayed(const Duration(seconds: 2));
       // ignore: use_build_context_synchronously
     await Navigator.pushNamed(context, MyRoutes.homeRoute);
         setState(() {
      changeButton = false ;
    });
   }
  }

  @override
  Widget build(BuildContext context) {

    return Material(
      child : SingleChildScrollView(
        child: Form(
          key : _formKey,
          child: Column(
            children: [
              Image.asset("assets/images/login_page.png", fit: BoxFit.cover, height: 300,),
           const Text("Welcome to Login Page", style: TextStyle(fontSize: 24 , fontWeight: FontWeight.bold),),
            const SizedBox(height: 10,),
            const Text("", style: TextStyle(fontSize: 24 , fontWeight: FontWeight.bold),),
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
                  validator: (value) {
                    if (value!.isEmpty) 
                    {
                        return "Username cannot be empty ";
                    }
                    
                    return null;
                  },
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
                  validator: (value) {
                    if (value!.isEmpty)
                    {
                      return "Password cannot be empty";
                    }
                    else if (value.length < 8)
                    {
                      return "Password length should be atleast 8";
                    }
        
                    return null;
                  },
                ),
              ),
            const  SizedBox(height: 40,),
          
              Material(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(changeButton ? 50 : 10),
                
                child: InkWell(
          
                  borderRadius: BorderRadius.circular(changeButton ? 50 : 10),
                      
                  onTap: () => moveToHome(context),
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 2),
                    alignment: Alignment.center,
                    width: changeButton ? 50 : 95,
                    height: 35 ,
                    
                    child: changeButton ? const Icon(Icons.done, color : Colors.white) :  const Text("Login" , style : TextStyle(fontSize: 15 , color: Colors.white)),
                  ),
                ),
              ),
          
            // ElevatedButton(onPressed: () {Navigator.pushNamed(context, MyRoutes.homeRoute);},
            //  style: TextButton.styleFrom(minimumSize: const Size(100, 40)), child: const Text("Login") ,),
            
            ],
          ),
          
            ],
          ),
        ),
      )
      );
  }


}