import 'package:doe_facil/constants/constants.dart';
import 'package:doe_facil/screens/first_screen/widget/page_content.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            PageContent(),
          ],
        ),
      ),
    );
  }
}
