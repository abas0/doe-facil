import 'package:flutter/material.dart';
import 'package:doe_facil/constants/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget> [
        Container(
          height: size.height * 0.32,
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                  left: 100 + kDefaultPadding,
                  right: kDefaultPadding,
                ),
                height: size.height * 0.3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage("assets/images/top.png")
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Doe Fácil',
                      style: TextStyle(
                        fontSize: 24.0, 
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
               Container(
                padding: EdgeInsets.only(
                  left: 100 + kDefaultPadding,
                  right: kDefaultPadding,
                  bottom: kDefaultPadding,
                  top: 115 + kDefaultPadding,
                ),
                child: Row(
                  children: <Widget>[
                    Flexible(
                      child: Text(
                        'Conectando quem pode doar a quem precisa',
                        style: TextStyle(
                          fontSize: 16.0, 
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.only(
                  left: kDefaultPadding,
                  right: kDefaultPadding,
                  bottom: 60 + kDefaultPadding,
                  top: 70 + kDefaultPadding,
                ),
                  child: Row(children: <Widget> [
                    Image.asset("assets/images/appicon.png")
                  ],
                )
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0,10),
                        blurRadius: 50,
                        color: kPrimaryLight.withOpacity(0.23), 
                      ),
                    ],
                  ),
                  child: Row(
                    children: <Widget> [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                          hintText: "Pesquisar",
                          hintStyle: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                    ],  
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
