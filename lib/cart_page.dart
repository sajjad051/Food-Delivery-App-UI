import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/app_bar_widget.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppBarWidget(),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                      left: 10,
                      bottom: 10,
                    ),
                    child: Text(
                      "Order list",
                      style: TextStyle(fontSize: 30,
                      fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
