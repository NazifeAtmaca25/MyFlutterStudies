import 'package:yemek_siparis/models/product.dart';

class Pizza extends Product{
  String city;
  Pizza(super.name, super.price, super.description, super.imageUrl, super.selected,this.city);

  @override
  String message() {
    // TODO: implement message
    return "${super.name} ürün sepetinize eklendi";
  }

}