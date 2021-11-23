import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SumaRiemann extends StatelessWidget {
  const SumaRiemann({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: 170,
          height: 140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromRGBO(165, 166, 246, 1),
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
                  color: const Color.fromRGBO(241, 120, 182, 1),
                ),
              ),
              Row(
                children: <Widget>[
                  Text(
                    '    Sumas de\n    Riemann',
                    style: GoogleFonts.redHatDisplay(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromRGBO(93, 95, 239, 1)),
                  ),
                ],
              ),
              const SizedBox(height: 3),
              Text(
                'Cálculo',
                style: GoogleFonts.redHatDisplay(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromRGBO(58, 58, 68, 1)),
              ),
            ],
          ),
        ),
        MaterialButton(
          elevation: 10,
          minWidth: 154,
          height: 136,
          onPressed: () {
            Navigator.pushNamed(context, "setting");
          },
        ),
      ],
    );
  }
}
