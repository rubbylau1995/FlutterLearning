
import 'package:flutter/material.dart';
import 'package:flutter_application_2/constant.dart';class FeatureProductsView extends StatelessWidget {
  const FeatureProductsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeauturedProduct(image: "/bottom_img_1.png", press: (){}),
          FeauturedProduct(image: "/bottom_img_2.png", press: (){}),
        ],
      ),
    );
  }
}

class FeauturedProduct extends StatelessWidget {
  const FeauturedProduct({
    Key? key, required this.image, required this.press,
  }) : super(key: key);
  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press(),
      child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: 185,
          margin: EdgeInsets.only(
              left: kDefaultPadding / 2,
              bottom: kDefaultPadding,
              right: kDefaultPadding / 2),
              decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image:AssetImage(imagePath + image),
              ) ,               
              ),               
              ),
    );
  }
}