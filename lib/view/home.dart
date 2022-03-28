import 'package:bbb_compras_app/model/Products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'home_product_model.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  Color redColor = Color.fromARGB(250, 255, 0, 47);
  int selectedindex = 0;
  String choicetab = "Todos";

  late TabController _tabController;

  Products product = Products();

  int basket = 0;
  int wallet = 3000;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 6);
    this.update();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void update() {
    setState(() {
      basket = product.listLength();
      wallet = product.wallet;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                color: redColor,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        child: Image.asset(
                          "assets/americanas_logo.png",
                          fit: BoxFit.cover,
                        ),
                        width: 150,
                      ),
                      Stack(
                        children: [
                          IconButton(
                              onPressed: () {

                              },
                              icon: Icon(
                                FlutterIcons.shopping_basket_faw,
                                color: Colors.white,
                                size: 20,
                              )),
                          Positioned(
                            right: 5,
                              top: 5,
                              child: product.listLength() != 0 ? Container(
                                height: 15,
                                width: 15,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(250, 255, 0, 47),
                                  borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius:7,
                                        offset: Offset(0, 3), // changes position of shadow
                                      ),
                                    ]
                                ),
                                child: Text("${product.listLength()}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10
                                ),),
                              ):Container())
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                color: Colors.yellowAccent,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "mercado VIP",
                        style: TextStyle(
                            color: redColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      Text(
                        "\$ ${product.wallet}",
                        style: TextStyle(
                            color: redColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Color.fromARGB(200, 235, 232, 232),
                height: 140,
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TabBar(
                        controller: _tabController,
                        onTap: (int) {
                          setState(() {
                            selectedindex = _tabController.index;
                            switch (selectedindex) {
                              case 0:
                                choicetab = "Todos";
                                break;
                              case 1:
                                choicetab = "Hortifruti";
                                break;
                              case 2:
                                choicetab = "Enlatados";
                                break;
                              case 3:
                                choicetab = "Diversos";
                                break;
                              case 4:
                                choicetab = "Carnes";
                                break;
                              case 5:
                                choicetab = "Massas";
                                break;
                              default:
                                choicetab = "Todos";
                            }
                          });
                        },
                        indicatorColor: Colors.transparent,
                        labelColor: Colors.black,
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                        isScrollable: true,
                        tabs: [
                          TabBarModel("assets/icones/diversos.png", "Todos",
                              selectedindex, 0),
                          TabBarModel("assets/icones/hortifruti.png",
                              "Hortifruti", selectedindex, 1),
                          TabBarModel("assets/icones/enlatados.png",
                              "Enlatados", selectedindex, 2),
                          TabBarModel("assets/icones/diversos.png", "Diversos",
                              selectedindex, 3),
                          TabBarModel("assets/icones/carnes.png", "Carnes",
                              selectedindex, 4),
                          TabBarModel("assets/icones/massas.png", "Massas",
                              selectedindex, 5),
                        ]),
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 25),
                      child: Text(
                        choicetab,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                  child: TabBarView(
                controller: _tabController,
                children: [
                  HomeProductModel(
                    key: Key("0"),
                    product: product,
                    type: "Todos",
                    update: update,
                  ),
                  HomeProductModel(
                    key: Key("1"),
                    product: product,
                    type: "Hortifruti",
                    update: update,
                  ),
                  HomeProductModel(
                    key: Key("2"),
                    product: product,
                    type: "Enlatados",
                    update: update,
                  ),
                  HomeProductModel(
                    key: Key("3"),
                    product: product,
                    type: "Diversos",
                    update: update,
                  ),
                  HomeProductModel(
                    key: Key("4"),
                    product: product,
                    type: "Carnes",
                    update: update,
                  ),
                  HomeProductModel(
                    key: Key("5"),
                    product: product,
                    type: "Massas",
                    update: update,
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}

class TabBarModel extends StatelessWidget {
  final String icon;
  final String title;
  final int selectedindex;
  final int myindex;

  TabBarModel(this.icon, this.title, this.selectedindex, this.myindex);

  @override
  Widget build(BuildContext context) {
    return Tab(
      icon: Container(
        height: 45,
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: selectedindex == myindex
              ? Color.fromARGB(250, 255, 0, 47)
              : Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Image.asset(icon,
            color: selectedindex == myindex ? Colors.white : Colors.black),
      ),
      text: title,
    );
  }
}
