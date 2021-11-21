import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CadastroOng02 extends StatefulWidget {
  const CadastroOng02({ Key? key }) : super(key: key);

  @override
  _CadastroOng02State createState() => _CadastroOng02State();
}

class _CadastroOng02State extends State<CadastroOng02> {
  final maskFormatter = new MaskTextInputFormatter(mask: '+## (##) #####-####', filter: { "#": RegExp(r'[0-9]') }); 

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: 114,
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
        Container(
          margin: const EdgeInsets.only(left: 50.0, top: 30.0, right: 30.0),
          height: 50.0,
          width: 334,
          decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: new BorderRadius.all(new Radius.circular(15)
            )
          ),
          child: new Directionality(

              textDirection: TextDirection.ltr,
              child: new TextField(
                controller: null,
                autofocus: false,

                style:
                    new TextStyle(fontSize: 14.0, color: Color(0xFFbdc6cf)),
                decoration: new InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Digite seu nome',
                  contentPadding: const EdgeInsets.only(
                      left: 23.0, bottom: 16.0, top: 15.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.white),
                    borderRadius: new BorderRadius.circular(15),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: new BorderSide(color: Colors.white),
                    borderRadius: new BorderRadius.circular(25.7),
                  ),
                ),
              )
            ),
          ),
          Container(
          margin: const EdgeInsets.only(left: 50.0, top: 20.0, right: 30.0),
          height: 50.0,
          width: 334,
          decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: new BorderRadius.all(new Radius.circular(15)
            )
          ),
          child: new Directionality(

              textDirection: TextDirection.ltr,
              child: new TextField(
                controller: null,
                autofocus: false,

                style:
                    new TextStyle(fontSize: 14.0, color: Color(0xFFbdc6cf)),
                decoration: new InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Digite o endereço',
                  contentPadding: const EdgeInsets.only(
                      left: 23.0, bottom: 16.0, top: 15.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.white),
                    borderRadius: new BorderRadius.circular(15),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: new BorderSide(color: Colors.white),
                    borderRadius: new BorderRadius.circular(25.7),
                  ),
                ),
              )
            ),
          ),
          Container(
          margin: const EdgeInsets.only(left: 50.0, top: 20.0, right: 30.0),
          height: 50.0,
          width: 334,
          decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: new BorderRadius.all(new Radius.circular(15)
            )
          ),
          child: new Directionality(

              textDirection: TextDirection.ltr,
              child: new TextField(
                //maxLength: 11,
                controller: null,
                autofocus: false,
                keyboardType: TextInputType.number,
                style:
                  new TextStyle(fontSize: 14.0, color: Color(0xFFbdc6cf)),
                decoration: new InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  //alignLabelWithHint: Alignment.center,
                  hintText: 'Digite o numero para contato',
                  contentPadding: const EdgeInsets.only(
                      left: 23.0, bottom: 5, top: 15.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.white),
                    borderRadius: new BorderRadius.circular(15),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: new BorderSide(color: Colors.white),
                    borderRadius: new BorderRadius.circular(25.7),
                  ),
                ),
                inputFormatters: [maskFormatter],
              )
            ),
          ),
        ]
      ),     
      ]
    );
  }
}