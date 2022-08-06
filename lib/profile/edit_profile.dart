import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:introduction_screen/introduction_screen.dart';

class EditProfile extends StatelessWidget {
  EditProfile({Key? key}) : super(key: key);
  Color defaultColor = Color(0xffe6f2ff);
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: defaultColor,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("Edit Profile",
            style: TextStyle(color: Colors.black, fontSize: 30)),
        centerTitle: true,
      ),
      body: Container(
        color: defaultColor,
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Container(
                height: 300,
                width: double.infinity,
                child: Stack(
                  children: [
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
                        ],
                      ),
                    ),
                    Positioned(
                      top: 80,
                      left: 200,
                      child: Card(
                        elevation: 3,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        ),
                        color: Colors.deepOrange,
                      ),
                    )
                  ],
                ),
              ),
            ),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 2, color: Colors.grey),
                    borderRadius: BorderRadius.circular(20.0)),
                prefixIcon: Icon(Icons.phone_android),
                label: Text(
                  "My Phone",
                  style: TextStyle(color: Colors.blue),
                  maxLines: 20,
                ),
              ),
            ),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 2, color: Colors.grey),
                    borderRadius: BorderRadius.circular(20.0)),
                prefixIcon: Icon(Icons.email),
                label: Text(
                  "Email",
                  style: TextStyle(color: Colors.blue),
                  maxLines: 20,
                ),
              ),
            ),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 2, color: Colors.grey),
                    borderRadius: BorderRadius.circular(20.0)),
                prefixIcon: Icon(Icons.person),
                label: Text(
                  "Full Name",
                  style: TextStyle(color: Colors.blue),
                  maxLines: 20,
                ),
              ),
            ),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 2, color: Colors.grey),
                    borderRadius: BorderRadius.circular(20.0)),
                prefixIcon: Icon(Icons.password),
                label: Text(
                  "Password",
                  style: TextStyle(color: Colors.blue),
                  maxLines: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
