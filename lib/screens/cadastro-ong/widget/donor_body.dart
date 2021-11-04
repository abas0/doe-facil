import 'package:doe_facil/constants/constants.dart';
import 'package:flutter/material.dart';

class CadastroOng extends StatefulWidget {
  const CadastroOng({ Key? key }) : super(key: key);

  @override
  _CadastroOngState createState() => _CadastroOngState();
}

class _CadastroOngState extends State<CadastroOng> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    
    return Column(
      children: <Widget> [
        Container(
          height: size.height * 0.7,
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                  left: 100 + kDefaultPadding,
                  right: kDefaultPadding,
                ),
                //height: size.height * 4,
                //width: 50.0,
                height: 250.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30)),
                  boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.black54,
                      blurRadius: 15.0,
                      offset: Offset(0.0, 0.75)
                    )
                  ],
                ),        
                ),
              Container(
                  padding: EdgeInsets.only(
                  left: 10 + kDefaultPadding,
                  right: kDefaultPadding,
                  bottom: kDefaultPadding,
                  top: 80 + kDefaultPadding),
                  child: Row(
                    children: <Widget>[  
                      Flexible(
                        child : Container(
                          child: Text(
                          'Crie uma conta',
                          style: TextStyle(
                            fontSize: 24.0, 
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                      
                      ),
                        ),
                      ),            
                    ],
                  ),
                  ),
               Container(
                padding: EdgeInsets.only(
                  left: 10 + kDefaultPadding,
                  right: kDefaultPadding,
                  bottom: kDefaultPadding,
                  top: 115 + kDefaultPadding,
                ),
                child: Column(
                  children: <Widget>[
                    Flexible(
                      child: Text(
                        'Seja bem-vindo, preencha seus dados para começar',
                        style: TextStyle(
                          fontSize: 10.0, 
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.only(
                  left: 10 +kDefaultPadding,
                  right: kDefaultPadding,
                  bottom: 70 + kDefaultPadding,
                  top: 70 + kDefaultPadding,
                ),
                  child: Row(children: <Widget> [
                    Image.asset("assets/images/appicon.png")
                  ],
                )
              ),
              Positioned(
                bottom: 10,
                left: 0,
                right: 0,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 50,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}