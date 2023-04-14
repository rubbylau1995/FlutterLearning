import 'package:flutter/material.dart';
import 'package:flutter_application_2/constant.dart';
  
  Container HeaderWithSearchBox(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding),
          height: MediaQuery.of(context).size.height * 0.2,
          child: (Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.2 - 27,
                padding: EdgeInsets.only(left:kDefaultPadding, bottom: kDefaultPadding, right: kDefaultPadding),              
                decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    )),
                child: Row(
                  children: <Widget>[
                    Text("\$4000",
                     style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    Spacer(),
                    Image.asset("/Users/lausuetwa/test-project/flutter_application_2/assets/images/logo.png")
                  ],
                ),
              ),
              Positioned(
                  left: kDefaultPadding,
                  right: kDefaultPadding,
                  bottom: 0,
                  //you can use "right" and "bottom" too
                  child: Container(
                    alignment: Alignment.center,
                    height: 54,
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [BoxShadow(
                        offset: Offset(0,10),
                        blurRadius: 20,
                        color: kPrimaryColor.withOpacity(0.23),

                      )]
                    ),  
                  child: TextField(    
                            
                    decoration: InputDecoration(     
                      hintText: "Search",
                      hintStyle: TextStyle(
                        color: kBlackColor.withOpacity(0.1),                      
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      suffixIcon: Icon(Icons.search), //place it behind
                      //icon: Icon(Icons.favorite),

                    ),
                  ),
                  )),
            ],
          )));
  }

