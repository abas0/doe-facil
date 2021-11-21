import 'package:doe_facil/models/cadastroOng.dart';
import 'package:flutter/material.dart';

class Cabecalho extends StatelessWidget {
  final TituloCadastroOng cadastroOng;
  Cabecalho(this.cadastroOng);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              top: 30
            ),
            height: 270.0,
            width: MediaQuery.of(context).size.width,
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: 39
                  ),
                  child: Image.asset("assets/images/appicon.png"),
                ),
                Container(               
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            left: 52,
                            top: 16
                          ),
                          child: Text(
                            cadastroOng.titulo,
                            style: TextStyle(
                              fontSize: 24.0, 
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          )
                        )          
                    ]
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            left: 52,
                            top: 14
                        ),
                        child: Text(
                        cadastroOng.descricao,
                        style: TextStyle(
                          fontSize: 14.0, 
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    )
                    ]
                  )
                    ]
                  ),                   
              ),       
          ]
        )
      )
    ]
  )
  );
  }
}