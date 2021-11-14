import 'package:doe_facil/models/cadastroOng.dart';
import 'package:flutter/material.dart';

class Cabecalho extends StatelessWidget {
  final TituloCadastroOng cadastroOng;
  Cabecalho(this.cadastroOng);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 30
            ),
            height: 270.0,
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
            child: Column(
              children: [
                Container(
                child: Container(
                  height: 160,
                  padding: EdgeInsets.only(
                  left: 40,
                ),
                child: Row(
                  children: <Widget>[
                    Image.asset("assets/images/appicon.png")
                  ],
                ),
                ),       
              ),
              Container(
                padding: EdgeInsets.only(
                left: 52,
                //top: 184
                ),
                child: Row(
                  children: <Widget>[  
                  Flexible(
                    child : Container(
                      child: Text(
                        cadastroOng.titulo,
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
                  left: 20,
                  top: 13,
                ),
                child: Column(
                  children: <Widget>[
                      Text(
                        cadastroOng.descricao,
                        style: TextStyle(
                          fontSize: 14.0, 
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                  ],
                ),
              )
            ]
          )  
        ),
      ]
    )
  );
  }
}