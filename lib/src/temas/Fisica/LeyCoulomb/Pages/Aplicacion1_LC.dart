// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Aplicacion1_LCo extends StatelessWidget {
  const Aplicacion1_LCo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 17,
          ),
          customAppBar(context),
          barra(context),
          cuerpo(context),
          botonFinal(context),
        ],
      ),
    );
  }

  Widget customAppBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            'assets/imgs/cajita.png',
            height: 60,
            width: 60,
          ),
          Text(
            'Ley de Coulomb',
            style: GoogleFonts.redHatDisplay(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
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

  Widget barra(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset('assets/imgs/aplicacion_LCo.png'),
        ],
      ),
    );
  }
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
                Navigator.pushNamed(context, "homeLC");
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

Widget cuerpo(BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17.2),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'si se frota una cinta de teflón con un guante, el guante queda con carga positiva y la cinta con carga negativa, por eso al acercase se atraen. Ahora bien, si frotamos un globo inflado con nuestro cabello el globo se cargará con energía negativa y al acercarlo a la cinta de teflón ambos se repelen por que tienen el mismo tipo de carga.',
          style: GoogleFonts.redHatDisplay(
            fontSize: 18,
            letterSpacing: 1.2,
          ),
        ),
        Image.asset(
          "assets/imgs/image13.png",
          width: 490,
          height: 170,
        ),
      ],
    ),
  );
}
