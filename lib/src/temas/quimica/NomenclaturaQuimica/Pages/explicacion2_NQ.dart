// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Explicacion2_NQ extends StatelessWidget {
  const Explicacion2_NQ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          customAppBar(context),
          barra(context),
          cuerpo(context),
          SizedBox(
            height: 70,
          ),
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
            'assets/imgs/nomenclatura.png',
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

  Widget barra(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset('assets/imgs/explicacion1_NQ.png'),
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
                  Navigator.pushNamed(context, "explicacion1_NQ");
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
          Row(
            children: <Widget>[
              Text(
                'Next',
                style: GoogleFonts.arbutusSlab(
                  fontSize: 20,
                ),
              ),
              TextButton(
                child: const Icon(Icons.arrow_forward),
                onPressed: () {
                  Navigator.pushNamed(context, "explicacion3_NQ");
                },
              ),
            ],
          )
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
            'Dentro de la nomenclatura química, se distinguen dos grandes grupos de compuestos:\n- Compuestos orgánicos, referidos a aquellos con presencia de carbono enlazado con moléculas de hidrógeno, oxígeno, azufre, nitrógeno, boro y ciertos halógenos.\n-Compuestos inorgánicos, que se refieren a todo el universo de compuestos químicos que no incluyen moléculas de carbono.',
            style: GoogleFonts.redHatDisplay(
              fontSize: 18,
              letterSpacing: 1.2,
            ),
          ),
        ],
      ),
    );
  }
}
