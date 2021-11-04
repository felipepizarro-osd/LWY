import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/pages/perfil_usuario.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePages extends StatelessWidget {
  const HomePages({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.grey[100],
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(
              'assets/imgs/c19.png',
              height: 500,
            ),
            ElevatedButton(
              child: Text(
                'Go!',
                style: GoogleFonts.baloo(
                  fontSize: 35,
                ),
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "home");
              },
            ),
          ], //Widget
        ),
      ), //Container
    );
  }
}
