import 'package:doe_facil/constants/constants.dart';
import 'package:flutter/material.dart';

class ObrigadoBody extends StatelessWidget {
  const ObrigadoBody({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: kBackgroundColor,
      padding: EdgeInsets.only(
        top: 300
      ),
      child: Center(
        child: Column(
          children: [
            Text(
            'Obrigada por se cadastrar',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 17.0,
              color: Colors.grey[900],
              fontWeight: FontWeight.bold,
            )
          ),
          Flexible(
              child: Text(
                'Fique de olho, em breve você receberá uma doação!',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey[900],
                ),
              ),
            ),
          ]
        /*  Container(
            padding: EdgeInsets.only(
              bottom: 0,
              left: 0,
              right: 0,
              //top: 150,
            ),
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
                          fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]
                )
              ]
            )
          )*/
        ),
      ),
    );
  }
}