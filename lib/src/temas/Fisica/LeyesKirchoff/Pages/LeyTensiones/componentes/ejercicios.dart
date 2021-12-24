import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EjerciciosLT extends StatelessWidget {
  const EjerciciosLT({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            Container(
              width: 293,
              height: 114,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                //color de fondo
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 10),
                  Container(
                    width: 279,
                    height: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      //color de la franja
                      color: Color.fromRGBO(221, 136, 202, 1),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      const SizedBox(height: 85, width: 25),
                      Text(
                        '    Ejercicios',
                        style: GoogleFonts.redHatDisplay(
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromRGBO(25, 25, 29, 1)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 2),
                ],
              ),
            ),
            MaterialButton(
              elevation: 10,
              minWidth: 293,
              height: 114,
              onPressed: () {
                Navigator.pushNamed(context, "Ejercicio1_LT");
              },
            ),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
