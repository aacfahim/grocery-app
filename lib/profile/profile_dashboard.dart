import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:grocery_shop/cred_handling/login.dart';
import 'package:grocery_shop/profile/edit_profile.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);
  //Color defaultColor = Color(0xffe6f2ff);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe6f2ff),
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color(0xffe6f2ff),
        title: Text("PROFILE",
            style: TextStyle(color: Colors.black, fontSize: 30)),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => EditProfile())),
            child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                elevation: 3,
                child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.settings,
                      color: Colors.black,
                      size: 25,
                    ))),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Container(
                height: 300,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                        right: 0,
                        left: 0,
                        top: 50,
                        child: Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0)),
                          child: Container(
                            height: 220,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              color: Colors.white,
                            ),
                          ),
                        )),
                    Positioned(
                      left: 20,
                      right: 20,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 2,
                                    color: Colors.grey,
                                    spreadRadius: 2),
                              ],
                            ),
                            child: CircleAvatar(
                              radius: 60,
                              backgroundImage: NetworkImage(
                                  "https://avatars.githubusercontent.com/u/37849194?v=4"),
                            ),
                          ),
                          Text(
                            "Ashfaq Afzal Chowdhury",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          TextButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                          title: Text("Are you sure?"),
                                          content: Text(
                                              "Do you want to exit from the\napp?"),
                                          actions: [
                                            TextButton(
                                                onPressed: () =>
                                                    Navigator.pushReplacement(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder:
                                                                (context) =>
                                                                    Login())),
                                                child: Text("YES")),
                                            TextButton(
                                                onPressed: () =>
                                                    Navigator.of(context).pop(),
                                                child: Text("NO")),
                                          ],
                                        ));
                              },
                              child: Text(
                                "Log Out",
                                style: TextStyle(
                                    color: Color(0xff2196f3),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              )),
                          SizedBox(height: 5),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0)),
              title: Text(
                'Order History',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.history,
                    color: Colors.white,
                  ),
                ),
                color: Colors.deepOrange,
              ),
            ),
            ListTile(
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0)),
              title: Text(
                'Delivery adress',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.home_filled,
                    color: Colors.white,
                  ),
                ),
                color: Colors.deepOrange,
              ),
            ),
            ListTile(
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0)),
              title: Text(
                'Cards & payments',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.credit_card,
                    color: Colors.white,
                  ),
                ),
                color: Colors.deepOrange,
              ),
            ),
            ListTile(
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0)),
              title: Text(
                'Tracking my order',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.online_prediction_rounded,
                    color: Colors.white,
                  ),
                ),
                color: Colors.deepOrange,
              ),
            )
          ],
        ),
      ),
    );
  }
}
