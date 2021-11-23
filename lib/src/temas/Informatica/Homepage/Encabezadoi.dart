// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InformaticaEncabezado extends StatelessWidget {
  const InformaticaEncabezado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 350,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromRGBO(242, 242, 242, 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 10),
          Container(
            width: 327.5,
            height: 7.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromRGBO(157, 194, 255, 1),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: 8),
              Text(
                'Aprendizaje',
                style: GoogleFonts.redHatDisplay(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: 8),
              Text(
                'Informatica',
                style: GoogleFonts.redHatDisplay(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(150, 150, 160, 1),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Container(
            width: 315,
            height: 37,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromRGBO(165, 166, 246, 1),
            ),
          ),
        ],
      ),
    );
  }
}
