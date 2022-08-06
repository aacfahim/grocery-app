import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fswitch_nullsafety/fswitch_nullsafety.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_shop/model/categories.dart';
import 'package:grocery_shop/model/products.dart';
import 'package:grocery_shop/store/popularDeals.dart';
import 'package:grocery_shop/store/recipe.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final products = Products.getProducts();
  final catergories = Categories.getCategories();

  Color defaultColor = Color(0xffe6f2ff);
  Color contentColor = Colors.white;
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          width: double.infinity,
          color: isDark == false ? defaultColor : Colors.black,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Hand picked fresh\nitems only for you!",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: isDark ? Colors.white : Colors.black)),
                  Spacer(),
                  Icon(
                    Icons.notifications_none,
                    size: 30,
                    color: isDark ? Colors.white : Colors.black,
                  ),
                  SizedBox(width: 4),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isDark = !isDark;
                      });
                    },
                    child: Container(
                      height: 35,
                      width: 65,
                      decoration: BoxDecoration(
                          color: isDark == false
                              ? Colors.white
                              : Color(0xff6e3fc9),
                          borderRadius: BorderRadius.circular(50)),
                      child: Container(
                          alignment: Alignment.center,
                          child: isDark == false
                              ? const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      "🔆",
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ))
                              : const Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 8.0),
                                    child: Text(
                                      "🌙",
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ))),
                    ),
                  ),
                ],
              ),
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
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text("Categories",
                    style: GoogleFonts.caveat(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: isDark ? Colors.white : Colors.black)),
                Text("See All", style: TextStyle(color: Colors.deepOrange)),
              ]),
              Expanded(
                flex: 3,
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
                                    height: 120,
                                    width: 120,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "${catergories[index].type}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: isDark
                                            ? Colors.white
                                            : Colors.black),
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
              SizedBox(height: 15),
              Expanded(
                  flex: 2,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.asset("assets/offer1.png"),
                      ),
                      SizedBox(width: 10),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.asset("assets/offer2.png"),
                      ),
                      SizedBox(width: 10),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.asset("assets/offer3.jpg"),
                      )
                    ],
                  )),
              SizedBox(height: 20),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text("Popular Deals",
                    style: GoogleFonts.caveat(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: isDark ? Colors.white : Colors.black)),
                InkWell(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Populars())),
                    child: Text("See All",
                        style: TextStyle(color: Colors.deepOrange))),
              ]),
              Expanded(
                flex: 3,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: products.length,
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 8);
                    },
                    itemBuilder: (context, index) {
                      return SizedBox(
                        width: 150,
                        child: Stack(
                          children: [
                            Positioned(
                                right: 0,
                                left: 0,
                                top: 50,
                                child: Container(
                                  height: 140,
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
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 60,
                                    backgroundImage:
                                        NetworkImage("${products[index].img}"),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "${products[index].name}",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
