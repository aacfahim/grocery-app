import 'package:flutter/material.dart';
import 'package:grocery_shop/common/splash.dart';

class OTPverify extends StatelessWidget {
  OTPverify({Key? key}) : super(key: key);
  Color bgColor = Color(0xffffffcb);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 10),
            Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 0.25,
              child: Image.asset('assets/otp.png'),
            ),
            Text("OTP VERIFICATION",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic)),
            Text("Please Enter OTP",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.grey),
                ),
                label: Text("Enter your OTP",
                    style: TextStyle(color: Colors.grey)),
              ),
            ),
            ElevatedButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SplashScreen())),
                style: ElevatedButton.styleFrom(primary: Color(0xff2196f3)),
                child: Text("VERIFY")),
          ],
        ),
      ),
    );
  }
}
