import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_shop/screens/login.dart';
import 'package:grocery_shop/screens/verify_phone.dart';

class Registration extends StatelessWidget {
  Registration({Key? key}) : super(key: key);
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffafafa),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/reg_pic.png'),
              Text("Welcome to\nRegistration Page.",
                  style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 35,
                      fontWeight: FontWeight.bold)),
              Text("Please write the correct information",
                  style: GoogleFonts.squarePeg(
                      color: Color(0xff2196f3),
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
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
                      child: Icon(Icons.email_outlined, color: Colors.white),
                    )),
              ),
              TextFormField(
                controller: passController,
                decoration: InputDecoration(
                    label: Text("Password",
                        style: TextStyle(color: Color(0xff2196f3))),
                    suffixIcon: Icon(Icons.visibility, color: Colors.grey),
                    prefixIcon: Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.deepOrange,
                      ),
                      child: Icon(Icons.lock_outline, color: Colors.white),
                    )),
              ),
              SizedBox(height: 15),
              Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xff2196f3),
                        alignment: Alignment.center),
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => VerifyPhone())),
                    child: Text("Continue",
                        style: TextStyle(color: Colors.white))),
              ),
              Row(
                children: [
                  Text("Already have an account?",
                      style: GoogleFonts.squarePeg(
                          color: Color(0xff2196f3),
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                  TextButton(
                      onPressed: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login())),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
