import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/temas/quimica/NomenclaturaQuimica/componentes/ejemplos.dart';
import 'package:flutter_application_2/src/temas/quimica/NomenclaturaQuimica/componentes/ejercicios.dart';
import 'package:flutter_application_2/src/temas/quimica/NomenclaturaQuimica/componentes/explicacion.dart';

import 'package:google_fonts/google_fonts.dart';

class homeNomenclatura extends StatelessWidget {
  const homeNomenclatura({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          customAppBar(context),
          SizedBox(
            height: 40,
          ),
          Explicacion_Nomenclatura(),
          SizedBox(
            height: 20,
          ),
          Ejemplos_Nomenclatura(),
          SizedBox(height: 20),
          Ejercicios_Nomenclatura(),
          //this.Botonera(context),
          //customAppBar2(context),
        ],
      ),
    );
  }

  Widget customAppBar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17.2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            'assets/imgs/nomenclatura.png',
            height: 56,
            width: 212,
          ),
          IconButton(
            iconSize: 43,
            icon: Image.network(
                'https://lh3.googleusercontent.com/-TG6ztsHV91s/YYIQpvM2P6I/AAAAAAAAAA4/_Yk-veTi2FsT0lysAtNjwnhX3BaBkCs3QCLcBGAsYHQ/Userpic.png'),
            onPressed: () {
              Navigator.pushNamed(context, "perfil");
            },
          ),
        ],
      ),
    );
  }

  Widget customAppBar2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17.2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            iconSize: 60,
            icon: Image.asset('assets/imgs/leyCharles.png',
                height: 50, width: 200),
            onPressed: () {
              Navigator.pushNamed(context, "perfil");
            },
          ),
        ],
      ),
    );
  }
}
