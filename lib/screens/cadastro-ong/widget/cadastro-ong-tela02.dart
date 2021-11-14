import 'package:doe_facil/constants/constants.dart';
import 'package:flutter/material.dart';

class CadastroOng02 extends StatefulWidget {
  const CadastroOng02({ Key? key }) : super(key: key);

  @override
  _CadastroOng02State createState() => _CadastroOng02State();
}

class _CadastroOng02State extends State<CadastroOng02> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: 134,
              right: 134,
              top: 10
            ),
            child: new Text(
                'Selecione uma foto',
                overflow: TextOverflow.ellipsis,
                style: new TextStyle(
                  fontSize: 14.0,
                  fontFamily: 'DM Sans',
                  color: new Color(0xFF252435),
                  fontWeight: FontWeight.bold,
                ),
              ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 118.0, top: 17.0, right: 129.0),
            width: 167,
            height: 120.0,
            decoration: new BoxDecoration(
              color: Colors.grey[350],
              borderRadius: new BorderRadius.all(new Radius.circular(15))
            ),
            child: Stack(children: <Widget> [
              IconButton(
                icon: const Icon(Icons.camera_alt_outlined , color: Colors.white, size: 64),
                padding: EdgeInsets.only(
                  left: 51,
                  top: 34,
                  bottom: 34,
                  right: 52
                ),
                onPressed: () {
                  print('Upload');
                }, 
              ),
              Container(
              padding: EdgeInsets.only(
                left: 100,
                top: 50
              ),
              alignment: Alignment(100, 2),  
              child: ElevatedButton(
                onPressed: () {},
                child: Icon(Icons.camera_alt_outlined, color: Colors.white),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(10),
                  primary: Colors.grey[700], // <-- Button color
                ),
              )
            )
            ], 
          ),          
            ),
          ]
        )
      ]
       
     /*children: <Widget>[

        IconButton(
          icon: const Icon(Icons.camera_alt),
         // tooltip: 'Increase volume by 10',
          onPressed: () {
            setState(() {
            });
          }, 
        )
      ]*/
    );
  }
}