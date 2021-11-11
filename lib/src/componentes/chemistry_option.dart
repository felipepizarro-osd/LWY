import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class opcionQuimica extends StatelessWidget {
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
                "Química",
                style: GoogleFonts.andikaNewBasic(
                    fontSize: 45, fontWeight: FontWeight.normal),
              ),
              onPressed: () {},
            ),
          ],
        ),
        SizedBox(height: 20)
      ],
    );
  }
}
