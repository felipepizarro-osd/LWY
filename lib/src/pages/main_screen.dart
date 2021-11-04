import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/componentes/chemistry_option.dart';
import 'package:flutter_application_2/src/componentes/computer_option.dart';
import 'package:flutter_application_2/src/componentes/math_option.dart';
import 'package:flutter_application_2/src/componentes/physical_option.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //color: Colors.grey[100],
        children: <Widget>[
          customAppBar(),
          this.listaVertical(),
        ],
      ),
    );
  }

  Widget customAppBar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            'assets/imgs/inicio.png',
            height: 56,
            width: 212,
          ),
          IconButton(
            iconSize: 43,
            icon: Image.network(
                'https://lh3.googleusercontent.com/-TG6ztsHV91s/YYIQpvM2P6I/AAAAAAAAAA4/_Yk-veTi2FsT0lysAtNjwnhX3BaBkCs3QCLcBGAsYHQ/Userpic.png'),
            onPressed: () {
              
            },
          ),
        ],
      ),
    );
  }

  Widget listaVertical() {
    return Column(
//      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,

      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10.0),
        ),
        Container(
          height: 590,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              opcionInformatica(),
              opcionMatematicas(),
              opcionFisica(),
              opcionQuimica(),
            ],
          ),
        ),
      ],
    );
  }
}
