import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class opcionInformatica extends StatelessWidget {
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
              color: Color.fromRGBO(254, 202, 255, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                "Informática",
                style: GoogleFonts.andikaNewBasic(
                    fontSize: 45, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "informatica");
              },
            ),
          ],
        ),
        SizedBox(height: 20)
      ],
    );
  }
}
