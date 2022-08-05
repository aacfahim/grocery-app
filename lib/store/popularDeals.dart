import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:grocery_shop/model/categories.dart';
import 'package:grocery_shop/model/products.dart';

class Populars extends StatefulWidget {
  const Populars({Key? key}) : super(key: key);

  @override
  State<Populars> createState() => _PopularsState();
}

class _PopularsState extends State<Populars> {
  final products = Products.getProducts();
  final catergories = Categories.getCategories();
  Color defaultColor = Color(0xffe6f2ff);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultColor,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: defaultColor,
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          title: Text("Popular Deals",
              style: TextStyle(color: Colors.black, fontSize: 30))),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: GridView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) => SizedBox(
            width: 150,
            height: 200,
            child: Stack(
              children: [
                Positioned(
                    right: 0,
                    left: 0,
                    top: 50,
                    child: Container(
                      height: 220,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25)),
                        color: Colors.white,
                      ),
                    )),
                Positioned(
                  left: 20,
                  right: 20,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage("${products[index].img}"),
                      ),
                      Text(
                        "${products[index].name}",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text("${products[index].desc}"),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("${products[index].price} BDT",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Container(
                              color: Colors.deepOrange, child: Icon(Icons.add)),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 25,
          ),
        ),
      ),
    );
  }
}
