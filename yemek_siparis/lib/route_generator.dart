import 'package:flutter/material.dart';
import 'package:yemek_siparis/screens/basket.dart';
import 'package:yemek_siparis/screens/detailpage.dart';
import 'package:yemek_siparis/screens/homepage.dart';
import 'package:yemek_siparis/screens/menupage.dart';

import 'models/product.dart';

class RouteGenerator {
  static Route<dynamic>? getPage(RouteSettings setting){
    switch(setting.name){
      case "/":
        return MaterialPageRoute(builder: (context)=>Homepage(),settings: setting);
      case "/menu":
        var bilgi=setting.arguments as String;
        return MaterialPageRoute(builder: (context)=>Menupage(title:bilgi,),settings: setting);
      case "/detail":
        var information=setting.arguments as Product;
        return MaterialPageRoute(builder: (context)=>Detailpage(product: information,),settings: setting);
      case "/basket":
        return MaterialPageRoute(builder: (context)=>Basket(),settings: setting);
      default:
        return MaterialPageRoute(builder: (context)=>Scaffold(
          appBar: AppBar(title: Text("Sayfa Hatası"),),
          body: Center(child: Text("Böyle bir sayfa bulunmamaktadır."),),
        ));
    }
  }
}