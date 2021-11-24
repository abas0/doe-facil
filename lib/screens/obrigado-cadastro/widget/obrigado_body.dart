import 'package:doe_facil/constants/constants.dart';
import 'package:flutter/material.dart';

double _height = 0.0;
double _width = 0.0;

class ObrigadoBody extends StatelessWidget {
  const ObrigadoBody({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    _height = MediaQuery.of(context).size.height;
    return Container(
      child: new Column(
        children: <Widget>[
          new Container(
            height: _height * .35,
            color: Colors.yellow,
          ),
          new Container(
            height: _height * .56,  
            color: Colors.yellow,
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: kBackgroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(40.0),
                        topRight: const Radius.circular(40.0),
                        )
                      ),
                    ),
                Container(
                padding: EdgeInsets.only(
                  left: 30,
                  right: kDefaultPadding,
                  bottom: kDefaultPadding,
                  top: 42,
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'ONG',
                          style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[900],
                          ),
                        ),
                      ]
                    ),
                  ]
                )
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Obrigada por se cadastrar',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 17.0,
                              color: Colors.grey[900],
                          ),
                        ),
                      ]
                    ),
                  ]
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              top: 40
                            ),
                            child: Column(
                              children: <Widget>[
                          Text(
                            'Fique de olho, em breve você receberá uma doação!',
                            
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey[900],
                          ),
                        ),
                      ]
                            )
                          ),
                        ]
                    ),
                  ]
                  ),
                )
              ],
            ),
            
          )
        ],
      )
    );
  }
}