import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/temas/matematica/HomePage/c_segundaderivada.dart';
import 'package:flutter_application_2/src/temas/matematica/HomePage/encabezadoM.dart';
import 'package:flutter_application_2/src/temas/matematica/HomePage/s.revolucion.dart';
import 'package:flutter_application_2/src/temas/matematica/HomePage/sumariemann.dart';

import 'package:google_fonts/google_fonts.dart';

class HomeMatematica extends StatelessWidget {
  const HomeMatematica({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const SizedBox(height: 20),
          customAppBar(context),
          SizedBox(height: 40),
          botonFinal(context),
        ],
      ),
    );
  }
}

Widget customAppBar(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        const EncabezadoM(),
        const SizedBox(height: 10),
        Row(
          children: const <Widget>[
            SizedBox(width: 20),
            SolidoRevolucion(),
            SizedBox(width: 20),
            SumaRiemann(),
          ],
        ),
        const SizedBox(height: 25),
        const C_SegundaDerivada(),
        
      ],
    ),
  );
}

  Widget botonFinal(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17.2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          //Boton Back
          Row(
            children: <Widget>[
              TextButton(
                child: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pushNamed(context, "home");
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
                  //Navigator.pushNamed(context, "explicacion4_NQ");
                },
              ),
            ],
          )
        ],
      ),
    );
  }
