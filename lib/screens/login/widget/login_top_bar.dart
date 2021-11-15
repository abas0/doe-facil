import 'package:flutter/material.dart';
import 'package:doe_facil/constants/constants.dart';

class LoginBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          height: size.height * 0.38,
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                  left: 100 + kDefaultPadding,
                  right: kDefaultPadding,
                  //top: 10,
                ),
                height: size.height * 0.4,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 130 + kDefaultPadding,
                  left: kDefaultPadding,
                  bottom: kDefaultPadding,
                  right: kDefaultPadding,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(
                        top: kDefaultPadding - 20,
                        bottom: kDefaultPadding - 10,
                      ),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Realizar Login',
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      child: Text(
                        'Que bom ver você novamente, preencha seus dados abaixo para continuar.',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 160,
                padding: EdgeInsets.only(
                  left: kDefaultPadding,
                  right: kDefaultPadding,
                  bottom: kDefaultPadding,
                  top: kDefaultPadding + 30,
                ),
                child: Row(
                  children: <Widget>[Image.asset("assets/images/appicon.png")],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
