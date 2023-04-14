import 'package:flutter/material.dart';
import 'package:flutter_application_2/constant.dart';
// import 'package:flutter_application_2/screens/home/components/body.dart';
import 'package:flutter_application_2/screens/home/components/home_screen.dart';

class body_detail extends StatelessWidget {
  const body_detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        SizedBox(
          height: size.height * 0.8,
          child: Row(
            children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  top: kDefaultPadding * 2,
                ),
                child:Column(
                  children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Material(
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {
                        // Navigator.pop(context);
                       WidgetsBinding.instance.addPostFrameCallback((_) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomeScreen()),
                          );
                        });
                      },
                    ),
                  ),
                )])
              ),
            ),
             
            Container(
              height: size.height * 0.8,
              width: size.width * 0.85,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    topLeft: Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      color: kPrimaryColor.withOpacity(0.1),
                      blurRadius: 60,
                    )
                  ],
                  image: DecorationImage(
                    alignment: Alignment.centerLeft,
                    // fit: BoxFit.cover,
                    image: AssetImage(imagePath + "/img.png"),
                  )),
            )
          ]),
        )
      ],
    );
  }
}
