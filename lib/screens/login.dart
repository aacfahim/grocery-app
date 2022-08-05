import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: Alignment.topCenter,
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xff9ef5a6),
                  Color(0xffbbcedc),
                  Color(0xfface2c2),
                  Color(0xffb0dec4),
                ],
              ),
            ),
            child: Container(
              margin: EdgeInsets.only(top: 70.0),
              child: Text(
                "SIGN IN",
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.25,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  )),
              child: SingleChildScrollView(
                child: Column(children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 25.0, horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Welcome to Login\nPage.",
                            style: TextStyle(
                                color: Colors.deepOrange,
                                fontSize: 35,
                                fontWeight: FontWeight.bold)),
                        Text("Please type the correct information",
                            style: GoogleFonts.squarePeg(
                                color: Colors.grey,
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 26),
                        TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                              label: Text("Email",
                                  style: TextStyle(color: Color(0xff2196f3))),
                              prefixIcon: Container(
                                margin: EdgeInsets.all(6.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.deepOrange,
                                ),
                                child: Icon(Icons.email_outlined,
                                    color: Colors.white),
                              )),
                        ),
                        TextFormField(
                          controller: passController,
                          decoration: InputDecoration(
                              label: Text("Password",
                                  style: TextStyle(color: Color(0xff2196f3))),
                              suffixIcon:
                                  Icon(Icons.visibility, color: Colors.grey),
                              prefixIcon: Container(
                                margin: EdgeInsets.all(6.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.deepOrange,
                                ),
                                child: Icon(Icons.lock_outline,
                                    color: Colors.white),
                              )),
                        ),
                        SizedBox(height: 15),
                        Center(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xff2196f3),
                                  alignment: Alignment.center),
                              onPressed: () => null,
                              child: Text("Sign In",
                                  style: TextStyle(color: Colors.white))),
                        ),
                        SizedBox(height: 25),
                        Row(
                          children: [
                            Text("Don't have an account?",
                                style: GoogleFonts.squarePeg(
                                    color: Colors.grey,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold)),
                            TextButton(
                                onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Login())),
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      color: Colors.deepOrange,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
