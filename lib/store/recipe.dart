import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_shop/model/categories.dart';
import 'package:grocery_shop/model/products.dart';

class Recipe extends StatefulWidget {
  const Recipe({Key? key}) : super(key: key);

  @override
  State<Recipe> createState() => _RecipeState();
}

class _RecipeState extends State<Recipe> {
  final products = Products.getProducts();
  final catergories = Categories.getCategories();
  Color defaultColor = Color(0xffe6f2ff);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: defaultColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Choose your one\nfrom 1000+ Recipes!",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15.0)),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search for Anything"),
              ),
              SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text("Categories",
                    style: GoogleFonts.caveat(
                        fontSize: 25, fontWeight: FontWeight.bold)),
                Text("See All", style: TextStyle(color: Colors.deepOrange)),
              ]),
              Expanded(
                flex: 1,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30.0),
                              child: Column(
                                children: [
                                  Image.network(
                                    "${catergories[index].img}",
                                    height: 90,
                                    width: 120,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "${catergories[index].type}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 8);
                    },
                    itemCount: catergories.length),
              ),
              SizedBox(height: 20),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text("Popular Deals",
                    style: GoogleFonts.caveat(
                        fontSize: 25, fontWeight: FontWeight.bold)),
                Text("See All", style: TextStyle(color: Colors.deepOrange)),
              ]),
              Expanded(
                flex: 3,
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
                                backgroundImage:
                                    NetworkImage("${products[index].img}"),
                              ),
                              Text(
                                "${products[index].name}",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text("${products[index].desc}"),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("${products[index].price} BDT",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Container(
                                      color: Colors.deepOrange,
                                      child: Icon(Icons.add)),
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
            ],
          ),
        ),
      ),
    );
  }
}
