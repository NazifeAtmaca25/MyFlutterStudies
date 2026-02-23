class Product{
  
  String name;
  double price;
  String description;
  String imageUrl;
  bool selected=false;

  Product(this.name, this.price, this.description, this.imageUrl,
      this.selected);


  String message() {
    return "Ürün sepete eklendi";
  }

  void isSelected(){
    selected = !selected;
  }


}