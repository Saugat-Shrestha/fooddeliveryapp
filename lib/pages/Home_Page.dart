import 'package:FoodDeliveryApp/pages/Cart_Page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:FoodDeliveryApp/widgets/Categories_bar.dart';
import 'package:FoodDeliveryApp/widgets/New_item.dart';
import 'package:FoodDeliveryApp/widgets/Popular_bar.dart';
import 'package:FoodDeliveryApp/widgets/Search_bar.dart';
import 'package:FoodDeliveryApp/widgets/Top_bar.dart';

import '../widgets/Drawer_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          TopBar(),
          SizedBox(height: 10),
          Searchbar(),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              "Categories",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          CategoriesBar(),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              "Popular",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          PopularBar(),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              "Newest Items",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          NewestItems(),
        ],
      ),
      drawer: DrawerWidget(),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 10,
              spreadRadius: 2,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, "cartPage");
          },
          child: Icon(
            CupertinoIcons.cart,
            size: 28,
            color: Colors.red,
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
