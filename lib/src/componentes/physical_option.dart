import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class opcionFisica extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            MaterialButton(
              elevation: 10,
              minWidth: 379,
              height: 174,
              color: Color.fromRGBO(247, 220, 111, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                "Física",
                style: GoogleFonts.andikaNewBasic(
                    fontSize: 45, fontWeight: FontWeight.normal),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "fisica");
              },
            ),
          ],
        ),
        SizedBox(height: 20)
      ],
    );
  }
}
