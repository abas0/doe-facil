import 'package:doe_facil/models/botaoCriarConta.dart';
import 'package:doe_facil/screens/cadastro-ong/widget/cadastro-ong-tela01.dart';
import 'package:doe_facil/screens/cadastro-ong/widget/cadastro-ong-tela02.dart';
import 'package:doe_facil/screens/cadastro-ong/widget/cadastro-ong-tela03.dart';
import 'package:doe_facil/screens/cadastro-ong/widget/ong_botao-criar-conta.dart';
import 'package:doe_facil/screens/cadastro-ong/widget/ong_cabecalho.dart';
import 'package:flutter/material.dart';
import 'package:doe_facil/models/cadastroOng.dart';

class DonorCadastroOng extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Cabecalho(
              TituloCadastroOng(
                'Crie uma conta',
                'Seja bem-vindo. Preencha seus dados para começar'
              )
            ),
            CadastroOng(),
          ]
        ),
      )
    );
  }
}

class DonorCadastroOng02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: Cabecalho(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Cabecalho(
              TituloCadastroOng(
                'ONG',
                'Conte-nos um pouco sobre sua ONG'
              )
            ),
            CadastroOng02(),
          ]
        ),
      )
    );
  }
}

class DonorCadastroOng03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Cabecalho(
              TituloCadastroOng(
                'ONG',
                'Preencha os campos abaixo com os dados da ONG'
              )
            ),
            CadastroOng03(),
          ]
        ),
      )
    );
  }
}