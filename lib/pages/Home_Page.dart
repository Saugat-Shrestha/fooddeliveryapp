import 'package:flutter/material.dart';
import 'package:FoodDeliveryApp/widgets/Categories_bar.dart';
import 'package:FoodDeliveryApp/widgets/New_item.dart';
import 'package:FoodDeliveryApp/widgets/Popular_bar.dart';
import 'package:FoodDeliveryApp/widgets/Search_bar.dart';
import 'package:FoodDeliveryApp/widgets/Top_bar.dart';

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
    ));
  }
}
