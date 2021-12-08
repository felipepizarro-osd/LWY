// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/temas/Informatica/Homepage/Encabezadoi.dart';
import 'package:flutter_application_2/src/temas/Informatica/Homepage/arbolavl.dart';
import 'package:flutter_application_2/src/temas/Informatica/Homepage/bubblesort.dart';
import 'package:flutter_application_2/src/temas/Informatica/Homepage/listas.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageInformatica extends StatelessWidget {
  const HomePageInformatica({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const SizedBox(height: 20),
          customAppBar(context),
        ],
      ),
    );
  }

  Widget customAppBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const InformaticaEncabezado(),
          const SizedBox(height: 10),
          Row(
            children: const <Widget>[
              SizedBox(width: 15),
              ArbolAvl(),
              SizedBox(width: 20),
              Listas(),
            ],
          ),
          const SizedBox(height: 25),
          const BubbleSort(),
          const SizedBox(height: 80),
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
                  Navigator.pushNamed(context, "explicacion2_NQ");
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
                  Navigator.pushNamed(context, "explicacion4_NQ");
                },
              ),
            ],
          )
        ],
      ),
    );
  }

}
