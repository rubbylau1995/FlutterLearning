import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_application_2/constant.dart';
import 'package:flutter_application_2/screens/details/components/details_screen.dart';

class RecommenedProductsView extends StatelessWidget {
  const RecommenedProductsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        
        children: [
          ElevatedButton(
            onPressed: (){
                WidgetsBinding.instance.addPostFrameCallback((_) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DetailsScreen()),
                    );
                  });
            },
            child: RecommendedProduct(
                title: "Samantha",
                image: "/image_1.png",
                country: "Russia",
                price: 400,
       
                press: () {    
            //             Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => const DetailsScreen()),
            // );
              
                  // WidgetsBinding.instance.addPostFrameCallback((_) {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const DetailsScreen()),
                  //   );
                  // });
                }
                ),
          ),
          RecommendedProduct(
              title: "Samantdha",
              image: "/image_1.png",
              country: "Russia",
              price: 400,
              press: () {}),
          RecommendedProduct(
              title: "Samantdha",
              image: "/image_1.png",
              country: "Russia",
              price: 400,
              press: () {}),
        ],
      ),
    );
  }
}

class RecommendedProduct extends StatelessWidget {
  const RecommendedProduct({
    Key? key,
    required this.title,
    required this.image,
    required this.country,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String title, image, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      // height: 200,
      margin: EdgeInsets.only(
          left: kDefaultPadding / 2,
          bottom: kDefaultPadding,
          right: kDefaultPadding / 2),
      child: Column(
        children: <Widget>[
          Image.asset(imagePath + image),
          GestureDetector(
            onTap: press(),
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 20,
                      color: kPrimaryColor.withOpacity(0.23),
                    )
                  ]),
              child: Row(children: <Widget>[
                RichText(
                  text: TextSpan(
                    text: '$title\n',
                    style: Theme.of(context).textTheme.bodyMedium,
                    children: [
                      TextSpan(
                        text: '$country\n',
                        style: TextStyle(
                          color: kPrimaryColor.withOpacity(0.5),
                        ),
                      )
                    ],
                  ),
                ),
                Spacer(),
                Text("\$$price")
              ]),
            ),
          )
        ],
      ),
    );
  }
}
