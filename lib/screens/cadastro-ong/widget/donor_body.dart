import 'package:doe_facil/constants/constants.dart';
import 'package:flutter/material.dart';

class CadastroOng extends StatefulWidget {
  const CadastroOng({ Key? key }) : super(key: key);

  @override
  _CadastroOngState createState() => _CadastroOngState();
}

class _CadastroOngState extends State<CadastroOng> {
  bool _showPassword1 = false;
  bool _showPassword2 = false;
  bool isChecked1 = true;
  bool isChecked2 = false;
  String password = '';
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      return Colors.black;
    }
    return Stack(
      children: <Widget>[
        Container(
                padding: EdgeInsets.only(
                  left: 100 + kDefaultPadding,
                  right: kDefaultPadding,
                ),
                //height: size.height * 4,
                //width: 50.0,
                height: 295.0,
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
                  left: 52,
                  top: 184),
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
                  left: 52,
                  top: 228,
                ),
                child: Column(
                  children: <Widget>[
                    Flexible(
                      child: Text(
                        'Seja bem-vindo, preencha seus dados para começar',
                        style: TextStyle(
                          fontSize: 14.0, 
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
                  left: 40,
                  top: 72,
                ),
                child: Row(
                  children: <Widget>[
                    Image.asset("assets/images/appicon.png")
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 50.0, top: 320.0, right: 30.0),
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
                  hintText: 'Digite seu E-mail',
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
                margin: const EdgeInsets.only(left: 50.0, top: 380.0, right: 30.0),
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
                  hintText: 'Digite sua senha',
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
                  suffixIcon: GestureDetector(
                    child: Icon(_showPassword1 == false ? Icons.visibility_off : Icons.visibility, color: Colors.grey),
                    onTap: (){
                      setState(() {
                        _showPassword1 = !_showPassword1;
                      });
                    },
                  ), 
                ),
                obscureText: _showPassword1 == false ? true : false,
                onChanged: (value){
                  password = value;
                }
              )
            ),
          ),
          Container(
                margin: const EdgeInsets.only(left: 50.0, top: 440.0, right: 30.0),
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
                  hintText: 'Digite sua senha novamente',
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
                  suffixIcon: GestureDetector(
                    child: Icon(_showPassword2 == false ? Icons.visibility_off : Icons.visibility, color: Colors.grey),
                    onTap: (){
                      setState(() {
                        _showPassword2 = !_showPassword2;
                      });
                    },
                  ), 
                ),
                obscureText: _showPassword2 == false ? true : false,
                onChanged: (value){
                  if(value == password)
                  {
                    print('Senhas dão match!');
                  }
                  else{
                    print('Senhas não dão match');
                  }
                }
              )
            ),
          ),
              Container(
                  child: Container(
                    padding: EdgeInsets.only(bottom: 40, top: 600, left: 40, right: 40),
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
                Container(
                  padding: EdgeInsets.only(
                    top: 550,
                    left: 60
                  ),
                  child: Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: isChecked1,
                    onChanged: (bool? value) {
                    setState(() {
                      isChecked1 = value!;
                      isChecked2 = !isChecked2;
                    });
                  },
                )
            ),
            Container(
                  padding: EdgeInsets.only(
                    top: 550,
                    left: 99
                  ),
                  child: new Directionality(
                    textDirection: TextDirection.ltr,
                    child: new TextField(
                      controller: null,
                      autofocus: false,
                  style: new TextStyle(fontSize: 12.0, color: Colors.black),
                  decoration: new InputDecoration(
                    hintText: 'Doador',
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
                  padding: EdgeInsets.only(
                    top: 550,
                    left: 235
                  ),
                  child: Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: isChecked2,
                    onChanged: (bool? value) {
                    setState(() {
                      isChecked2 = value!;
                      isChecked1 = !isChecked1;
                    });
                  },
                )
            ),
            Container(
                  padding: EdgeInsets.only(
                    top: 550,
                    left: 271
                  ),
                  child: new Directionality(
                    textDirection: TextDirection.ltr,
                    child: new TextField(
                      controller: null,
                      autofocus: false,
                  style: new TextStyle(fontSize: 12.0, color: Colors.black),
                  decoration: new InputDecoration(
                    hintText: 'ONG',
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
        ]
    );          
  }
}