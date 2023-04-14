import 'package:flutter/material.dart';
import 'package:flutter_application_2/constant.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    padding: EdgeInsets.only(left:kDefaultPadding*1.5, bottom: kDefaultPadding, right: kDefaultPadding*1.5), 
    height: 80,
     decoration: BoxDecoration(
       color: kBackgroundColor,
         boxShadow: [BoxShadow(
           offset: Offset(0, -10),
           blurRadius: 10,
           color: kPrimaryColor.withOpacity(0.23),
         )],
         
     ),
     child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: <Widget>[
       IconButton(onPressed: (){}, icon: Icon(Icons.star_rounded), iconSize: 30,),
       IconButton(onPressed: (){}, icon: Icon(Icons.favorite), iconSize: 28,),
       IconButton(onPressed: (){}, icon: Icon(Icons.person), iconSize: 30,),
       ],
       
     ),
     
    );
  }
}