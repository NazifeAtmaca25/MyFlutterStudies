import 'package:flutter/material.dart';

import '../data/menu.dart';
import '../models/product.dart';

class Menupage extends StatefulWidget {
  final String title;
  const Menupage({super.key, required this.title});

  @override
  State<Menupage> createState() => _MenupageState();
}

class _MenupageState extends State<Menupage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white
        ),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ListView.builder(
          itemCount: Menu.allMenu[widget.title]!.length,
            itemBuilder: (context, index){
            var product=Menu.allMenu[widget.title]![index];
          return buildContainer(product);
        }),
      ),
    );
  }

  Container buildContainer(Product product) {
    return Container(
            height: 100,
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(width: 1,color: Colors.grey),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5,
                  offset: Offset(0, 3)
                )
              ]
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft:Radius.circular(15), bottomLeft: Radius.circular(15)),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(topLeft:Radius.circular(15), bottomLeft: Radius.circular(15)),
                      child: Image.network(product.imageUrl,fit: BoxFit.cover,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) {
                          return child;
                        }
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                      errorBuilder: (context, error, stackTrace) {
                        return Image.asset("assets/image/food.png",fit: BoxFit.cover,);
                      },),
                    ),

                  ),
                ),
                SizedBox(width: 5,),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(product.name,
                          style: TextStyle(fontSize: 20),),
                        Text("Fiyat: ${product.price} TL",style: TextStyle(fontSize: 15),)
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
  }
}
