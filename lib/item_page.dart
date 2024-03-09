import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/app_bar_widget.dart';
import 'package:clippy_flutter/arc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ItemPage extends StatelessWidget {
   ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 5),
        child: ListView(
          children: [
            AppBarWidget(),
            Padding(padding: EdgeInsets.all(16),
            child: Image.asset("images/burgerw.png",
            height: 300,),
            ),
            // Arc(
            //   edge: top,
            //   arcType: ArcType.CONVEY,
            //   height: 30,
            //   child: Container(
            //     width: double.infinity,
            //     color: Colors.white,
            //     child: Padding(
            //       padding: EdgeInsets.only(top: 60, bottom: 10),
            //       child: Row(
            //         children: [
            //           // RatingBar.builder(
            //           //   initialRating: 4,
            //           //   minRating: 1,
            //           //   direction: Axis.horizontal,
            //           //   itemCount: 5,
            //           //   itemSize: 18,
            //           //   itemPadding: EdgeInsets.symmetric(horizontal: 4),
            //           //   itemBuilder: (context,_) => Icon(Icons.star, color: Colors.red,),
            //           //   onRatingUpdate: (index) {},
            //           // ),
            //         ],
            //       ),
            //     ),
            //   ),
            //
            // )
          ],
        ),
      ),
    );
  }
}
