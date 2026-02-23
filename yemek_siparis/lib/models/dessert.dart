import 'package:yemek_siparis/models/product.dart';

class Dessert extends Product{
  String typeChocolate;

  Dessert(super.name, super.price, super.description, super.imageUrl, super.selected, this.typeChocolate);

  @override
  String message() {
    // TODO: implement message
    return "${super.name} sepete eklendi";
  }

}