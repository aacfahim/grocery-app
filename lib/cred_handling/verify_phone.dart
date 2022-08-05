import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:grocery_shop/cred_handling/otp.dart';

class VerifyPhone extends StatelessWidget {
  VerifyPhone({Key? key}) : super(key: key);

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
              height: MediaQuery.of(context).size.height * 0.20,
              child: Image.asset('assets/paperplane.png'),
            ),
            Text("VERIFY YOUR PHONE NUMBER",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic)),
            Text("Enter Phone Number",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 8),
                  width: 30,
                  child: Image.network(
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Flag_of_Bangladesh.svg/1200px-Flag_of_Bangladesh.svg.png"),
                ),
                Text("+880"),
                SizedBox(width: 10),
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 2, color: Colors.grey),
                      ),
                      label: Text("Phone Number",
                          style: TextStyle(color: Colors.grey)),
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OTPverify())),
                style: ElevatedButton.styleFrom(primary: Color(0xff2196f3)),
                child: Text("SEND OTP")),
            ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(primary: Color(0xff2196f3)),
                child: Text("BACK"))
          ],
        ),
      ),
    );
  }
}
