import 'package:doe_facil/constants/constants.dart';
import 'package:doe_facil/screens/obrigado-cadastro/widget/obrigado_body.dart';
import 'package:doe_facil/screens/obrigado-cadastro/widget/obrigado_top-bar.dart';
import 'package:flutter/material.dart';

class ObrigadoCadastro extends StatelessWidget {
 //const ObrigadoCadastro({ Key? key }) : super(key: key);

     @override
     Widget build(BuildContext context) {
      return Scaffold(
       body: Stack(
        children: <Widget>[
         ObrigadoBody(),
         ObridadaTopBar(),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar()
   );
 }

//  Widget getOverlayWidget() {
//    return new Container(
//      alignment: Alignment.bottomCenter,
//      child: new Container(
//       height: 100.0,
//       width: _width,
//       color: Colors.cyan.withOpacity(0.4),
//      ),
//    );
//  }
 }


 BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: kBackgroundColor,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          label: 'home',
          icon: Image.asset('assets/icons/home.png', width: 25),
        ),
        BottomNavigationBarItem(
          label: 'user',
          icon: Image.asset('assets/icons/user.png', width: 25),
        ),
      ],
    );
 }
 