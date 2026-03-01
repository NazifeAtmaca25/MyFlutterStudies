import 'package:flutter/material.dart';

import '../models/product.dart';

class Detailpage extends StatefulWidget {
  final Product product;
  const Detailpage({required this.product,super.key});

  @override
  State<Detailpage> createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> {
  @override
  Widget build(BuildContext context) {
    var myTextStyle=Theme.of(context).textTheme;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            backgroundColor: Colors.green,
            leading: BackButton(
              color: Colors.white,
              style: ButtonStyle(
                backgroundColor:  WidgetStatePropertyAll<Color>(Colors.green)
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(widget.product.imageUrl,fit: BoxFit.cover,),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Ürün ismi: ${widget.product.name}",style: myTextStyle.headlineSmall,),
                    SizedBox(height: 5,),
                    Text("Ürün fiyatı: ${widget.product.price}TL",style: myTextStyle.bodyLarge,),
                    Text("İçindekiler: ${widget.product.description}",style: myTextStyle.bodyLarge,)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton:FloatingActionButton.extended(onPressed: (){}, label: Text("Sipariş ver",style: TextStyle(fontSize: 24),),backgroundColor: Colors.green,foregroundColor: Colors.white,),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
