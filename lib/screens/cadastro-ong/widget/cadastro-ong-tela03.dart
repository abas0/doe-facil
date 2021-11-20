import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CadastroOng03 extends StatefulWidget {
  const CadastroOng03({ Key? key }) : super(key: key);

  @override
  _CadastroOng03State createState() => _CadastroOng03State();
}

class _CadastroOng03State extends State<CadastroOng03> {
  final maskFormatter = new MaskTextInputFormatter(mask: '+## (##) #####-####', filter: { "#": RegExp(r'^[a-zA-Z0-9_]') });
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(left: 50.0, top: 20.0, right: 30.0),
              height: 139.0,
              width: 334,
              decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.all(new Radius.circular(15)
              ),             
            ),
            child: new Directionality(
              textDirection: TextDirection.ltr,
              child: new TextField(
                controller: null,
                autofocus: false,
                minLines: 1,
                maxLines: 8,
                keyboardType: TextInputType.multiline,
                style:
                    new TextStyle(fontSize: 14.0, color: Color(0xFFbdc6cf), 
                    ),
                decoration: new InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Escreva um breve resumo',
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
                onChanged: (value)
                {
                  RegExp regex = new RegExp(r'^((([\w-]+\.)+[\w-]+(/[\w- ./?%&=]*)?))$');
                  if (!regex.hasMatch(value))
                    print('Insira uma URL válido');
                  else
                    print('URL valido');
                },
                style:
                    new TextStyle(fontSize: 14.0, color: Color(0xFFbdc6cf)),
                decoration: new InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Digite o site',
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
            )
          ]
        )
      ],
    );
  }
}