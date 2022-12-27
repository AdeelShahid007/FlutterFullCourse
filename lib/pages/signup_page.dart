import 'package:flutter/material.dart';
import 'package:test1/utils/routes.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  bool changeButton = false ;
  final _formKey = GlobalKey<FormState>();
  // final TextEditingController _pass = TextEditingController();
  // final TextEditingController _confirmPass = TextEditingController();

  var _pass = '';

  moveToLogin (BuildContext context) async {
    if( _formKey.currentState!.validate()){

    setState(() {
      changeButton = true ;
        });  
     await Future.delayed(const Duration(seconds: 2));
       // ignore: use_build_context_synchronously
     await Navigator.pushNamed(context, MyRoutes.loginRoute);
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
          key: _formKey,
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
                  validator: (value) {
                    if (value!.isEmpty)
                    {
                      return "Username cannot be empty";
                    }
                    else if (value.length > 15)
                    {
                      return "Username should be maximum 15";
                    }
                    return null;
                  },
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
                  validator: (value) {
                    if (value!.isEmpty)
                    {
                      return "Fullname cannot be empty";
                    }
                    else if (value.length > 15)
                    {
                      return "Fullname should be maximum 15";
                    }

                    return null;
                  },
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
                  validator: (value) {
                    if (value!.isEmpty)
                    {
                      return "Email cannot be empty";
                    }
                    // ignore: unrelated_type_equality_checks
                    else if (!value.contains('.') || !value.contains("@"))
                    {
                      return "Email is not valid";
                    }

                    return null;
                  },
                ),
              ),
              const  SizedBox(height: 20,),
              SizedBox(
                width: 300,
                child: TextFormField(
                  // controller: _pass,
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
                      return "Password length should atleast be 8";
                    }
                    _pass = value;
                    return null;
                  },
                ),
              ),
            const  SizedBox(height: 20,),
              SizedBox(
                width: 300,
                child: TextFormField(
                  // controller: _confirmPass,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Enter the Confirm Password",
                    labelText: "Confirm Password",
                    // border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty)
                    {
                      return "Confirm password cannot be empty";
                    }
                    else if (value != _pass)
                    {
                      return "Password should be matched";
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
                      
                  onTap: () => moveToLogin(context),
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 2),
                    alignment: Alignment.center,
                    width: changeButton ? 50 : 95,
                    height: 35 ,
                    
                    child: changeButton ? const Icon(Icons.done, color : Colors.white) :  const Text("Sign Up" , style : TextStyle(fontSize: 15 , color: Colors.white)),
                  ),
                ),
              ),
           
            // ElevatedButton(onPressed: () {
            //   moveToLogin(context);
            //   // Navigator.pushNamed(context, MyRoutes.loginRoute);
            //   },
            //  style: TextButton.styleFrom(minimumSize: const Size(100, 40)), child: const Text("Sign Up") ,),
            
             const SizedBox(height: 40,)
            
            ],
          ),
          
            ],
          ),
        ),
      )
      );
  }
}