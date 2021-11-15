import 'package:doe_facil/constants/constants.dart';
import 'package:doe_facil/screens/login/widget/login_input.dart';
import 'package:doe_facil/screens/login/widget/login_top_bar.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            LoginBanner(),
            LoginInput(),
          ],
        ),
      ),
    );
  }
}
