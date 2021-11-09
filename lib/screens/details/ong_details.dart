import 'package:doe_facil/models/ong.dart';
import 'package:doe_facil/screens/details/widget/ong_banner.dart';
import 'package:doe_facil/screens/details/widget/ong_description.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OngDetails extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            OngBanner(
              Ong(
                'Amigos do Bem',
                'Existem muitas variações disponíveis de passagens de Lorem Ipsum, mas a maioria sofreu algum tipo de alteração, seja por inserção de passagens com humor',
                'assets/images/amigos.png',
                '(81)99347-4343', 
                'ong@gmail.com',
                'www.site.com.br',
              ),
            ),
            OngDescription(
              Ong(
                'Amigos do Bem',
                'Existem muitas variações disponíveis de passagens de Lorem Ipsum, mas a maioria sofreu algum tipo de alteração, seja por inserção de passagens com humor',
                'assets/images/amigos.png',
                '(81)99347-4343', 
                'ong@gmail.com',
                'www.google.com',
              ),
            ),
          ],
        ),
      ),
    );
  }
}