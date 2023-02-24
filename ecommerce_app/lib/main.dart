import 'package:ecommerce_app/pages/cart_page.dart';
import 'package:ecommerce_app/pages/homepage.dart';
import 'package:ecommerce_app/pages/item_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      theme: ThemeData(
       scaffoldBackgroundColor: Colors.white
      ),
      routes: {
        '/':(context) =>  Homepage(), 
         'cartpage':(context) =>  CartPage() ,
         'itempage':(context) =>  ItemPage() ,
      }
    );
  }
}

