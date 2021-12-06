import 'package:doe_facil/screens/cadastro-ong/donor_cadastro-ong_screen.dart';
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
  String email = '';
  String validarPassword = '';

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      return Colors.black;
    }
    return Stack(
      children: <Widget>[
              Container(
                margin: const EdgeInsets.only(left: 50.0, top: 50.0, right: 30.0),
                height: 50.0,
                width: 334,
                decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.all(new Radius.circular(15))
                ),
            child: new Directionality(

              textDirection: TextDirection.ltr,
              child: new TextFormField(
                controller: null,
                autofocus: false,
                keyboardType: TextInputType.emailAddress,
                autofillHints: [AutofillHints.email],
                validator: (value){
                  RegExp regex = new RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
                  if (!regex.hasMatch(value!)){
                    print("ENTREI AQUI");
                    return 'Email inválido';
                  }
                  else{ 
                    return null;
                  }
                },
                onChanged: (value){
                  print(email);
                  email = value;
                },
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
                margin: const EdgeInsets.only(left: 50.0, top: 120.0, right: 30.0),
                height: 50.0,
                width: 334,
                decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.all(new Radius.circular(15)
                )
              ),
            child: new Directionality(

              textDirection: TextDirection.ltr,
              child: new TextFormField(
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
                validator: (value){
                  print(value);
                  if(value!.length < 6){
                    return 'A senha precisa ter 6 ou mais caracteres';
                  }
                  return null;
                },
                onChanged: (value){
                  print(value);
                  password = value;
                }
              )
            ),
          ),
          Container(
                margin: const EdgeInsets.only(left: 50.0, top: 200.0, right: 30.0),
                height: 50.0,
                width: 334,
                decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.all(new Radius.circular(15)
                )
              ),
            child: new Directionality(

              textDirection: TextDirection.ltr,
              child: new TextFormField(
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
                validator: (value){
                  if(value == password)
                  {
                    return 'Senhas dão match!';
                  }
                  else{
                    return 'Senhas não dão match';
                  }
                },
                onChanged: (value){
                  print(value);
                  validarPassword = value;
                },
              )
            ),
          ),
                Container(
                  padding: EdgeInsets.only(
                    top: 270,
                    left: 60
                  ),
                  child: Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: isChecked1,
                    onChanged: (bool? value) {
                    print(isChecked1);  
                    setState(() {
                      isChecked1 = value!;
                      isChecked2 = !isChecked2;
                    });
                  },
                )
            ),
            Container(
                  padding: EdgeInsets.only(
                    top: 270,
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
                    top: 270,
                    left: 235
                  ),
                  child: Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: isChecked2,
                    onChanged: (bool? value) {
                      print(isChecked2);
                    setState(() {
                      
                      isChecked2 = value!;
                      isChecked1 = !isChecked1;
                    });
                  },
                )
            ),
            Container(
                  padding: EdgeInsets.only(
                    top: 270,
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
        Container(
          padding: EdgeInsets.only(bottom: 100, top: 350, left: 40, right: 40),
            child: Stack(
              children: <Widget>[
                ElevatedButton(onPressed: (){
                  RegExp regex = new RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');  
                  if(!regex.hasMatch(email) || password.length < 6 || validarPassword != password){
                    print(password.length);
                    print("Login inválido");
                  }
                  else{
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DonorCadastroOng02()));
                  }

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
                      //btnSeguinte.tituloBotao,
                      'Seguinte',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                )
              )
            ],
          ),
        )
        ]
    );          
  }
}

// void _saveUser(LoginModel user) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     prefs.setString(
//       PreferencesKeys.activeUser,
//       json.encode(user.toJson()),
//     );
//   }