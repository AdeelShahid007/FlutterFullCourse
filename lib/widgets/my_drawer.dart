import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepOrange,
        child: ListView(padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text("Adeel Mughal"),
                accountEmail: Text("kgf6adeel@gmail.com"),
                currentAccountPicture:CircleAvatar(
                  backgroundImage: NetworkImage("https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/1744a191472915.5e329f4376330.jpg"),
                ),)),
              ListTile(
                leading: Icon(Icons.home , color: Colors.white,),
                title: Text("Home" , textScaleFactor: 1.5, style: TextStyle(color: Colors.white),),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.profile_circled , color: Colors.white,),
                title: Text("Profile" , textScaleFactor: 1.5, style: TextStyle(color: Colors.white),),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.mail , color: Colors.white,),
                title: Text("Mail" , textScaleFactor: 1.5, style: TextStyle(color: Colors.white),),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.settings , color: Colors.white,),
                title: Text("Settings" , textScaleFactor: 1.5, style: TextStyle(color: Colors.white),),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.bag_fill , color: Colors.white,),
                title: Text("About Us" , textScaleFactor: 1.5, style: TextStyle(color: Colors.white),),
              ),
          ],
        ),
      ),
    );
  }
}