import 'package:doe_facil/constants/constants.dart';
import 'package:doe_facil/screens/first_screen/first_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DoeFacilApp());
}

class DoeFacilApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doe Fácil',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FirstPage(),
    );
  }
}
