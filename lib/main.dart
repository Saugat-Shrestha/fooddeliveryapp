import 'package:FoodDeliveryApp/pages/Cart_Page.dart';
import 'package:FoodDeliveryApp/pages/Item_Page.dart';
import 'package:flutter/material.dart';
import 'package:FoodDeliveryApp/pages/Home_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery App',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF5F5F3),
      ),
      routes: {
        "/": (context) => const HomePage(),
        "cartPage": (context) => const CartPage(),
        "itemPage": (context) => const ItemPage(),
      },
    );
  }
}
