import 'package:flutter/material.dart';
import 'package:yemek_siparis/route_generator.dart';
import 'package:yemek_siparis/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: "/",
      onGenerateRoute: RouteGenerator.getPage,
    );
  }
}
