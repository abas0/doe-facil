import 'package:flutter/material.dart';

class CadastroOng03 extends StatefulWidget {
  const CadastroOng03({ Key? key }) : super(key: key);

  @override
  _CadastroOng03State createState() => _CadastroOng03State();
}

class _CadastroOng03State extends State<CadastroOng03> {
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
              )
            ),
            )
          ]
        )
      ],
    );
  }
}