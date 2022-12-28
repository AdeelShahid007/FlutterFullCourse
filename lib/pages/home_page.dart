import 'package:flutter/material.dart';
import 'package:test1/modals/catalog.dart';
import 'package:test1/widgets/item_widget.dart';
import '../Widgets/my_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // final String day = "my";
  // final String name = 'Hacker';

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(10, (index) => CatalogModel.items[0]);
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Center(child: Text("DDOS Hacker Provider" , style: TextStyle(fontWeight: FontWeight.bold),)),
        actions: const [
          Center(child: Icon(Icons.add_a_photo_outlined))
        ],
      ),
          // floatingActionButton: FloatingActionButton(
          //   onPressed: () {
          //     Navigator.pop(context , MyRoutes.loginRoute);
          //   },
          //  ))
        body : Padding(
          padding: const EdgeInsets.all(50.0),
          child: ListView.builder(
            itemCount: dummyList.length,
            itemBuilder: (BuildContext context, int index) { 
            return ItemWidget(
              item:dummyList[index],
              );
           },
            
            ),
        )
        );
  }
}