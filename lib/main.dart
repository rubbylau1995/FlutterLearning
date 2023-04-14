import 'package:flutter/material.dart';
import 'package:flutter_application_2/constant.dart';
import 'package:flutter_application_2/screens/home/components/home_screen.dart';
import 'package:flutter_application_2/utils/material_color_helper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //remove the hardcode banner
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        // primaryColor: Colors.black,
        primarySwatch: createMaterialColor(kPrimaryColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        iconTheme: IconThemeData(color: createMaterialColor(kPrimaryColor)),
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
