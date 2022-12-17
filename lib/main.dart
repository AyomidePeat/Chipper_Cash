

import 'package:chipper_cash/data_bundle.dart';
import 'package:chipper_cash/home_screen.dart';
import 'package:chipper_cash/lock_screen.dart';
import 'package:chipper_cash/pay_bills_screen.dart';
import 'package:chipper_cash/profile_screen.dart';
import 'package:chipper_cash/request_screen.dart';
import 'package:chipper_cash/screen_layout.dart';
import 'package:chipper_cash/test.dart';
import 'package:chipper_cash/unlock_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp (home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      //ScreenLayout
   
   return MaterialApp(
    debugShowCheckedModeBanner: true,
    theme: ThemeData(fontFamily: 'Montserrat'),

     home:LockScreen()
     
   );
     
  }
}
