// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Ejercicio1_LT extends StatelessWidget {
  const Ejercicio1_LT({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 26,
          ),
          customAppBar(context),
          listaVertical(context),
        ],
      ),
    );
  }

  Widget listaVertical(context) {
    return Column(
//      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,

      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 100, vertical: 0),
        ),
        SizedBox(
          height: 583,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              barra(context),
              //formula(context),
              cuerpo(context),
              botonFinal(context),
            ],
          ),
        ),
      ],
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
            'Ley de las Tensiones',
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
                  Navigator.pushNamed(context, "hometensiones");
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
            'Encontrar el valor de las corrientes I1, I2 e I3 mostradas en la figura.',
            style: GoogleFonts.redHatDisplay(
              fontSize: 18,
              letterSpacing: 1.2,
            ),
          ),
          Image.asset(
            "assets/imgs/image9.png",
            width: 490,
            height: 170,
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
          Image.asset('assets/imgs/ejercicio_LT.png'),
        ],
      ),
    );
  }
}
