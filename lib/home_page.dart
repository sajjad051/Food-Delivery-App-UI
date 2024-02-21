import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/app_bar_widget.dart';
import 'package:food_delivery_app/widgets/categories_widget.dart';
import 'package:food_delivery_app/widgets/popula_Items_widget.dart';
import 'package:food_delivery_app/widgets/newest_items_widget.dart';
import 'package:food_delivery_app/widgets/drawer_widget.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Custom app bar
          AppBarWidget(),
          //Search
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ]),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.search,
                      color: Colors.red,
                    ),
                    Container(
                      width:250,
                      height: 50,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "What would you like to have ?",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Icon(Icons.filter_list),
                  ],
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20,left: 10),
          child: Text("Categories",
          style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20,
          ),),
          ),
          // category widget
          CategoriesWidget(),
          Padding(padding: EdgeInsets.only(top: 20,left: 10),
            child: Text("Popular ",
              style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20,
              ),),
          ),
          PopularItemsWidget(),

          // Newest
          Padding(padding: EdgeInsets.only(top: 20,left: 10),
            child: Text("Newest ",
              style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20,
              ),),
          ),
          NewestItemsWidget(),
        ],
      ),
      drawer: DrawerWidget(),
      //Floting button
      floatingActionButton: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(0, 3),
              ),
            ]),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, "cartPage");
          },
          child: Icon(CupertinoIcons.cart,size: 28,color: Colors.red,),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
