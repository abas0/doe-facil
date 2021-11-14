import 'package:doe_facil/screens/cadastro-ong/widget/cadastro-ong-tela01.dart';
import 'package:doe_facil/screens/cadastro-ong/widget/ong_cabecalho.dart';
import 'package:flutter/material.dart';
import 'package:doe_facil/models/cadastroOng.dart';

class DonorCadastroOng extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: Cabecalho(),
      body: SingleChildScrollView(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisSize: MainAxisSize.min,
          children: [
            Cabecalho(
              TituloCadastroOng(
                'Crie uma conta',
                'Seja bem-vindo. Preencha seus dados para começar'
              )
            ),
            CadastroOng()
          ]
        ),
      )
    );
  }
}