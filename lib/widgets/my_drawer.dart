import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test1/utils/routes.dart';

class MyDrawer extends StatefulWidget {

  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color.fromARGB(255, 196, 6, 6),
        child: ListView(padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text("Adeel Mughal"),
                accountEmail: Text("kgf6adeel@gmail.com"),
                currentAccountPicture:CircleAvatar(
                  backgroundImage: NetworkImage("https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/1744a191472915.5e329f4376330.jpg"),
                ),)),
              ListTile(
                leading: const Icon(Icons.home , color: Colors.black),
                // tileColor: isSelected ? Colors.blue : null, 
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                title: const Text("Home" , textScaleFactor: 1.5, style: TextStyle(color: Colors.black),),
              ),
               ListTile(
                leading: const Icon(CupertinoIcons.profile_circled , color: Colors.black,),
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.profileRoute);
                },
                title: const Text("Profile" , textScaleFactor: 1.5, style: TextStyle(color: Colors.black),),
              ),
               ListTile(
                leading: const Icon(CupertinoIcons.mail , color: Colors.black,),
                title: const Text("Mail" , textScaleFactor: 1.5, style: TextStyle(color: Colors.black),),
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.mailRoute);
                },
              ),
               ListTile(
                leading: const Icon(CupertinoIcons.settings , color: Colors.black,),
                title: const Text("Settings" , textScaleFactor: 1.5, style: TextStyle(color: Colors.black),),
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.settingRoute);
                },
              ),
               ListTile(
                leading: const Icon(CupertinoIcons.bag_fill , color: Colors.black,),
                title: const Text("About Us" , textScaleFactor: 1.5, style: TextStyle(color: Colors.black),),
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.aboutRoute);
                },
              ),
          ],
        ),
      ),
    );
  }
}