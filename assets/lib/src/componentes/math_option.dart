import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class opcionMatematicas extends StatelessWidget {
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
              color: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                "Matemáticas",
                style: GoogleFonts.andikaNewBasic(
                    fontSize: 45, fontWeight: FontWeight.normal),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "matematica");
              },
            ),
          ],
        ),
        SizedBox(height: 20)
      ],
    );
  }
}
