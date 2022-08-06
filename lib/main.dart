import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grocery_shop/common/boarding_page.dart';
import 'package:grocery_shop/profile/edit_profile.dart';
import 'package:grocery_shop/profile/profile_dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
    );
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: OnBoardingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
