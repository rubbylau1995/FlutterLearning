import 'package:flutter/material.dart';
import 'package:flutter_application_2/constant.dart';
import 'package:flutter_application_2/screens/home/components/featured_product.dart';
import 'package:flutter_application_2/screens/home/components/recommend_product.dart';
import 'package:flutter_application_2/screens/home/components/title_and_more_btn.dart';
import 'package:flutter_application_2/screens/home/header_with_searchbox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //enable scrolling but only one child
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(context),
          TitleAndMoreBtn(
            title: "Recommended",
            press: () {},
          ),
          RecommenedProductsView(),
          TitleAndMoreBtn(
            title: "Featured Products",
            press: () {},
          ),
          FeatureProductsView(),  
          SizedBox(height: kDefaultPadding,)   
        ],
      ),
    );
  }
}


