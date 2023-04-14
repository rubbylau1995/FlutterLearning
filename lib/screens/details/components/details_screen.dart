import 'package:flutter/material.dart';
import 'package:flutter_application_2/constant.dart';
import 'package:flutter_application_2/screens/details/components/body_detail.dart';

class DetailsScreen extends StatelessWidget { //stle
  const DetailsScreen({Key? key}) : super(key: key);
//testing git
  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return
   Container(
          height: size.height * 0.1,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath + "/img.png"),

            ),
            // color: Colors.blue,
         ),
   );
    // return Scaffold(
    //  body: body_detail(),
    // );
  }
}

