import 'package:flutter/material.dart';

class Menupage extends StatelessWidget {
  const Menupage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 200,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15)
              ),
              child: Text("Deneme"),
            )
          ],
        ),
      ),
    );
  }
}
