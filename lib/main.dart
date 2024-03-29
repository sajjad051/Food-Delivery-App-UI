import 'package:flutter/material.dart';
import 'home_page.dart';
import 'cart_page.dart';
import 'item_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF5F5F3),
      ),
     routes: {
        "/" : (context) => HomePage(),
       "cartPage" : (context) => CartPage(),
       "itemPage" : (context) => ItemPage(),
     },
    );
  }
}

