import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/bottom_nav_bar.dart';
import 'package:flutter_application_2/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_application_2/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: buildAppBar(), //route
       body: Body(),
       bottomNavigationBar: BottomNavBar(),
       
       
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        //icon: SvgPicture.asset("/assets/icons/menu.svg"),
        icon: SvgPicture.asset("/Users/lausuetwa/test-project/flutter_application_1/assets/icons/menu.svg"),         
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.favorite),
          onPressed: () {},
        ),
      ]
    );
  }
}
