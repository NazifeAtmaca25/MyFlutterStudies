import 'package:yemek_siparis/models/product.dart';

class Burger extends Product{
  bool meat;
  Burger(super.name, super.price, super.description, super.imageUrl, super.selected,this.meat);

  @override
  String message() {
    // TODO: implement message
    return "${super.name} sepete eklendi";
  }
}