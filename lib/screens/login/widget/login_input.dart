import 'package:doe_facil/constants/constants.dart';
import 'package:doe_facil/screens/home/donor_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginInput extends StatefulWidget {
  const LoginInput({Key? key}) : super(key: key);

  @override
  _LoginInputState createState() => _LoginInputState();
}

class _LoginInputState extends State<LoginInput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: kDefaultPadding + 10,
            ),
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          bottom: kDefaultPadding - 10,
                        ),
                        child: Row(
                          children: [
                            Text(
                              'E-mail',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          hintText: 'Digite seu E-mail',
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: kDefaultPadding,
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          bottom: kDefaultPadding - 10,
                        ),
                        child: Row(
                          children: [
                            Text(
                              'Senha',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          hintText: 'Digite sua Senha',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            child: Container(
              padding: EdgeInsets.only(
                top: kDefaultPadding + 30,
              ),
              height: 105,
              width: 335,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: kFormButtonPrimary,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DonorHomeScreen()));
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
