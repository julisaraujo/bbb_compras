import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductModel extends StatefulWidget {
  ProductModel(
      {required Key key,
      required this.imagem,
      required this.nome,
      required this.descricao,
      required this.preco,
      required this.remove,
      required this.add,
      required this.quantidade,
      required this.disponivel,})
      : super(key: key);

  final String imagem;
  final String nome;
  final String descricao;
  final int preco;
  final void Function() remove;
  final void Function() add;
  final int quantidade;
  final int disponivel;

  @override
  _ProductModelState createState() => _ProductModelState();
}

class _ProductModelState extends State<ProductModel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 90,
                  margin: EdgeInsets.all(5),
                  child: Image.asset(widget.imagem),
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.nome,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Disponível",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "\$ ${widget.preco}",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.85),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "${widget.disponivel} ${widget.descricao}",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 70,
                  height: 25,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(200, 235, 232, 232),
                      borderRadius: BorderRadius.circular(7)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        child: Icon(
                          Icons.remove,
                          size: 15,
                        ),
                        onTap: widget.remove,
                      ),
                      Text(
                        "${widget.quantidade}",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.w500),
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.add,
                          color: Color.fromARGB(250, 255, 0, 47),
                          size: 15,
                        ),
                        onTap: widget.add,
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
