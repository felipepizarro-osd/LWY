import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class explicacionBarra_balance extends StatelessWidget {

  const explicacionBarra_balance({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Stack(

          //alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            Container(
            width: 344,
            height: 56,
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
                    color: Color.fromRGBO(157, 194, 255, 1),
                  ),
                ),
                Row(
                  children: <Widget>[
                    const SizedBox(height: 85, width: 25),
                    Text(
                      '    Explicación:  Equilibrio Quimico',
                      style: GoogleFonts.redHatDisplay(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromRGBO(25, 25, 29, 1)),
                          
                    ),
                  ],
                ),
                const SizedBox(height: 2),

                ],
              ),
            ),

            
          ],
          
        ),
        SizedBox(height: 20),




      ],
    );
  }
}
