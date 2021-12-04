import 'package:doe_facil/models/botaoCriarConta.dart';
import 'package:flutter/material.dart';

import '../donor_cadastro-ong_screen.dart';
import 'cadastro-ong-tela02.dart';

class OngBotaoCriarConta extends StatelessWidget {
  final BotaoCriarConta btnSeguinte;
  OngBotaoCriarConta(this.btnSeguinte);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: EdgeInsets.only(bottom: 40, top: 20, left: 40, right: 40),
          child: Stack(
            children: <Widget>[
              ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DonorCadastroOng02()));
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
                    btnSeguinte.tituloBotao,
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              )
            )
          ],
        ),
      )
    );
  }
}