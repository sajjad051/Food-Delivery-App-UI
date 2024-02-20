import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/app_bar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AppBarWidget(),
        ],
      ),
    );
  }
}
