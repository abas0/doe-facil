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
    return Stack(
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
                  top: 120 + kDefaultPadding),
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
                  top: 160 + kDefaultPadding,
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
                height: 160,
                padding: EdgeInsets.only(
                  left: kDefaultPadding,
                  right: kDefaultPadding,
                  bottom: kDefaultPadding,
                  top: kDefaultPadding + 35,
                ),
                child: Row(
                  children: <Widget>[
                    Image.asset("assets/images/appicon.png")
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20.0, top: 300.0, right: 20.0),
                height: 50.0,
                width: 334,
                decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.all(new Radius.circular(15)
                )
                    /*decoration: InputDecoration(
                      hintText: "Digite seu e-mail",
                      hintStyle: TextStyle(
                        color: kFontLight,
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),*/
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
                  hintText: 'E-mail',
                  contentPadding: const EdgeInsets.only(
                      left: 14.0, bottom: 8.0, top: 8.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.white),
                    borderRadius: new BorderRadius.circular(15),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: new BorderSide(color: Colors.white),
                    borderRadius: new BorderRadius.circular(25.7),
                  ),
                ),
              ))),
              Container(
                //child: Center(
                  child: Container(
                    padding: EdgeInsets.only(top: 500),
                    //alignment: Alignment.bottomCenter,
                    child: Stack(
                      children: <Widget>[
                        ElevatedButton(onPressed: (){
                          print('Hi there');
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
                              'Seguinte',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ))
                      ],
                    ),
                  )
                ),
              //)
            ]
    );          
  }
}