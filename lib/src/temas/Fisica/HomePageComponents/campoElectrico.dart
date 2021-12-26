// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CampoElectrico extends StatelessWidget {
  const CampoElectrico({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: 170,
          height: 140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromRGBO(245, 255, 141, 1),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 10),
              Container(
                width: 140,
                height: 7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: const Color.fromRGBO(252, 221, 236, 1),
                ),
              ),
              Row(
                children: <Widget>[
                  Text(
                    '   Campo\n   Electrico',
                    style: GoogleFonts.redHatDisplay(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromRGBO(172, 107, 203, 1)),
                  ),
                ],
              ),
              SizedBox(height: 3),
              Text(
                'Electromagnetismo',
                style: GoogleFonts.redHatDisplay(
                    fontSize: 14, color: const Color.fromRGBO(58, 58, 68, 1)),
              ),
            ],
          ),
        ),
        MaterialButton(
          elevation: 10,
          minWidth: 170,
          height: 140,
          onPressed: () {
            Navigator.pushNamed(context, "campoE");
          },
        ),
      ],
    );
  }
}
