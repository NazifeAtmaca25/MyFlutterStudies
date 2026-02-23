import 'package:flutter/material.dart';
import 'package:yemek_siparis/screens/basket.dart';
import 'package:yemek_siparis/screens/detailpage.dart';
import 'package:yemek_siparis/screens/homepage.dart';
import 'package:yemek_siparis/screens/menuPage.dart';

class RouteGenerator {
  static Route<dynamic>? getPage(RouteSettings setting){
    switch(setting.name){
      case "/":
        return MaterialPageRoute(builder: (context)=>Homepage(),);
      case "/menu":
        return MaterialPageRoute(builder: (context)=>Menupage());
      case "/detail":
        return MaterialPageRoute(builder: (context)=>Detailpage());
      case "/basket":
        return MaterialPageRoute(builder: (context)=>Basket());
      default:
        return MaterialPageRoute(builder: (context)=>Scaffold(
          appBar: AppBar(title: Text("Sayfa Hatası"),),
          body: Center(child: Text("Böyle bir sayfa bulunmamaktadır."),),
        ));
    }
  }
}