// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/temas/quimica/NomenclaturaQuimica/componentes/ejemplos.dart';
import 'package:flutter_application_2/src/temas/quimica/NomenclaturaQuimica/componentes/ejercicios.dart';
import 'package:flutter_application_2/src/temas/quimica/NomenclaturaQuimica/componentes/explicacion.dart';

import 'package:google_fonts/google_fonts.dart';

import 'componentes/ejemplos.dart';
import 'componentes/ejercicios.dart';
import 'componentes/explicacion.dart';

class homeleynodos extends StatelessWidget {
  const homeleynodos({Key? key}) : super(key: key);

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
          Explicacion_LeyDeNodos(),
          SizedBox(
            height: 20,
          ),
          EjemplosLN(),
          SizedBox(height: 20),
          EjerciciosLN(),
          //this.Botonera(context),
          botonFinal(context),
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
            'assets/imgs/leynodos.png',
            height: 56,
            width: 230,
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

  Widget botonFinal(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17.2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          //Boton Back
          Row(
            children: <Widget>[
              TextButton(
                child: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pushNamed(context, "homeLK");
                },
              ),
              Text(
                'Prev',
                style: GoogleFonts.arbutusSlab(
                  fontSize: 20,
                ),
              ),
            ],
          ),
          //Botón Next
        ],
      ),
    );
  }
}
