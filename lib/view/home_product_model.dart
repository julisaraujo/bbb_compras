import 'package:bbb_compras_app/model/Products.dart';
import 'package:bbb_compras_app/view/product_model.dart';
import 'package:flutter/material.dart';

class HomeProductModel extends StatefulWidget {
  HomeProductModel(
      {required Key key,
      required this.product,
      required this.type,
      required this.update})
      : super(key: key);


  final Products product;
  final String type;
  final Function update;

  @override
  _HomeProductModelState createState() => _HomeProductModelState();
}

class _HomeProductModelState extends State<HomeProductModel> {

  List Product = [];

  @override
  void initState() {
    super.initState();
    this.organizeList();
  }


  organizeList(){
    if(widget.type == "Todos"){
      Product = widget.product.products;
    }
    else if (widget.type == "Hortifruti") {
      for(var product in widget.product.products){
        if (product["grupo"] == "Hortifruti"){
          Product.add(product);
        }
      }
    }
    else if (widget.type == "Enlatados") {
      for(var product in widget.product.products){
        if (product["grupo"] == "Enlatados"){
          Product.add(product);
        }
      }
    }
    else if (widget.type == "Diversos") {
      for(var product in widget.product.products){
        if (product["grupo"] == "Diversos"){
          Product.add(product);
        }
      }
    }
    else if (widget.type == "Carnes") {
      for(var product in widget.product.products){
        if (product["grupo"] == "Carnes"){
          Product.add(product);
        }
      }
    }
    else if (widget.type == "Massas") {
      for(var product in widget.product.products){
        if (product["grupo"] == "Massas"){
          Product.add(product);
        }
      }
    }
    else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: Product.length,
            itemBuilder: (context, index) {
              return ProductModel(
                imagem: Product[index]["imagem"],
                nome: Product[index]["nome"],
                descricao: Product[index]["descrição"],
                preco: Product[index]["valor"],
                quantidade: Product[index]["quantidade"],
                disponivel: Product[index]["disponivel"],
                add: () {
                  if (widget.product.products[index]["quantidade"] <
                      widget.product.products[index]["disponivel"] &&
                      (widget.product.wallet -
                          widget.product.products[index]["valor"]) >
                          0) {
                    if(widget.product.productBasket.contains(Product[index])){
                      int i = -1;
                      for (var basketProduct in widget.product.productBasket){
                        i++;
                        if (basketProduct == Product[index]){
                          setState(() {
                            widget.product.productBasket[i]["quantidade"]++;
                            widget.product.addWallet(widget.product.products[index]["valor"]);
                            print(widget.product.wallet);
                            print(widget.product.productBasket);
                          });
                        }
                      }
                    }
                    else {
                      setState(() {
                        widget.product.products[index]["quantidade"]++;
                        widget.product.addProductBasket(widget.product.products[index]);
                        widget.product.addWallet(widget.product.products[index]["valor"]);
                        print(widget.product.wallet);
                        print(widget.product.productBasket);
                      });
                    }
                  } else {}
                  widget.update();
                },
                remove: () {
                  if (widget.product.products[index]["quantidade"] > 0) {
                    int i = -1;

                    for(var basketProduct in widget.product.productBasket){
                      i++;
                      if(widget.product.productBasket[i]["quantidade"] == 1){
                        setState(() {
                          widget.product.products[index]["quantidade"]--;
                          widget.product.removeProductBasket(widget.product.productBasket[i]);
                          widget.product.removeWallet(widget.product.products[index]["valor"]);
                          print(widget.product.wallet);
                          print(widget.product.productBasket);
                        });
                      }
                      else {
                        setState(() {
                          widget.product.productBasket[i]["quantidade"]--;
                          widget.product.removeWallet(widget.product.products[index]["valor"]);
                          print(widget.product.wallet);
                          print(widget.product.productBasket);
                        });
                      }
                    }
                  } else {}
                  widget.update();
                },
                key: Key("$index"),
              );
            }));
  }
}
