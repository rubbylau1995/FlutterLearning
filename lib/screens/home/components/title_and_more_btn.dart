import 'package:flutter/material.dart';
import 'package:flutter_application_2/constant.dart';

class TitleAndMoreBtn extends StatelessWidget {
  const TitleAndMoreBtn({
    Key? key,
    required this.title, 
    required this.press,
  }) : super(key: key);
  
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 54,
        padding: EdgeInsets.only(
            left: kDefaultPadding,
            bottom: kDefaultPadding,
            right: kDefaultPadding),
        // padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        // padding: EdgeInsets.all(kDefaultPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(),
        ),
        child: Row(
          children: <Widget>[
            TitleWithCustomUnderline(text: title,),
            Spacer(),
            TitleWithMoreBtn(title: "More", press: press),
          ],
        )
        );
  }
}


class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key? key, required this.title, required this.press,
  }) : super(key: key);

final String title;
final Function press;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.green,
      textColor: Colors.white,
      shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),
      child: Text(
        title,
      ),
      onPressed: (){}//press(),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {

  const TitleWithCustomUnderline({
    Key? key,
    required this.text, 
    // this.text , //If the field should have the same value for all instances, then remove the initialization in the parameter list:
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    );
  }
}
