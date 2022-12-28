import 'package:flutter/material.dart';
import '../modals/catalog.dart';

class ItemWidget extends StatelessWidget {

  final Item item ;

  // ignore: unnecessary_null_comparison
   const ItemWidget({ Key? key, required this.item}): assert (item != null) , super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Card(
      child: Column(
        children: [
          Row( 
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/images/iphone12promax.jpg",  height: 150,),
              const SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.name.toUpperCase(),style: const TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                  Text(item.desc,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  const SizedBox(height: 20,),
                  Text("\$${item.price}" , style: const TextStyle(fontSize: 20 , color: Color.fromARGB(255, 195, 6, 6)),)
                ],
              )
            ],
          ),
          // ListTile(
          //   leading: Image.asset("assets/images/iphone12promax.jpg",  height: 500,),
          // ),
        ],
      ),
    );
  }
}