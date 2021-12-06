import 'package:doe_facil/screens/obrigado-cadastro/obrigado-cadastro_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:easy_mask/easy_mask.dart';


class CadastroOng03 extends StatefulWidget {
  const CadastroOng03({ Key? key }) : super(key: key);

  @override
  _CadastroOng03State createState() => _CadastroOng03State();
}

class _CadastroOng03State extends State<CadastroOng03> {
 var controller = new MoneyMaskedTextController(decimalSeparator: '.', thousandSeparator: ',');
 final agency = new MaskTextInputFormatter(mask: "####-##", filter: { "#": RegExp(r'[0-9]') });
 final account = new MaskTextInputFormatter(mask: "['#####-#', '######-#', '#######-#', '########-#', '#########-#', '###########-#']", filter: { "#": RegExp(r'[0-9]') });
   
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
            child:(
              TextField(
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
            child:(
              //textDirection: TextDirection.ltr,
              TextField(
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
            child:(
              TextField(
                controller: controller, 
                keyboardType: TextInputType.number,
                autofocus: false,
                style:
                  new TextStyle(fontSize: 14.0, color: Color(0xFFbdc6cf)),
                decoration: new InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Digite o valor do PIX',
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
                 //inputFormatters: [controller],
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
                  hintText: 'Digite o banco',
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
                keyboardType: TextInputType.number,
                style:
                    new TextStyle(fontSize: 14.0, color: Color(0xFFbdc6cf)),
                decoration: new InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Digite o número da agência',
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
                inputFormatters: [agency], 
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
                keyboardType: TextInputType.number,
                style:
                    new TextStyle(fontSize: 14.0, color: Color(0xFFbdc6cf)),
                decoration: new InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Digite o número da conta bancária',
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
                inputFormatters: [
                TextInputMask(
                  mask: ['99999-9', '999999-9', '9999999-9', '99999999-9', '999999999-9', '9999999999-9'],
                  reverse: false)
                ],
                //inputFormatters: [agency], 
              )
            ),
            ),
            Container(
          padding: EdgeInsets.only(bottom: 40, top: 20, left: 40, right: 40),
            child: Stack(
              children: <Widget>[
                ElevatedButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ObrigadoCadastro()));
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  alignment: Alignment.bottomLeft,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
                child: Ink(            
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Colors.blue, Colors.green]),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Container(
                    width: 335,
                    height: 56,
                    alignment: Alignment.center,
                    child: Text(
                      'Cadastrar',
                      //btnSeguinte.tituloBotao,
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                )
              )
            ],
          ),
        )
          ]
        )
      ],
    );
  }
}