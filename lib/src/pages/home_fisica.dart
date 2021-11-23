import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/temas/Fisica/HomePageComponents/Encabezado.dart';
import 'package:flutter_application_2/src/temas/Fisica/HomePageComponents/campoElectrico.dart';
import 'package:flutter_application_2/src/temas/Fisica/HomePageComponents/coulomb.dart';
import 'package:flutter_application_2/src/temas/Fisica/HomePageComponents/kirchhoff.dart';

import 'package:google_fonts/google_fonts.dart';

class FisicaHome extends StatelessWidget {
  const FisicaHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const SizedBox(height: 20),
          customAppBar(context),
        ],
      ),
    );
  }
}

Widget customAppBar(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        const encabezado(),
        const SizedBox(height: 10),
        Row(
          children: const <Widget>[
            SizedBox(width: 20),
            kirchhoff(),
            SizedBox(width: 20),
            LeyCoulomb(),
          ],
        ),
        const SizedBox(height: 25),
        const CampoElectrico(),
        const SizedBox(height: 60),
        Row(
          children: <Widget>[
            TextButton(
              child: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pushNamed(context, "home");
              },
            ),
            Text(
              'Prev',
              style: GoogleFonts.arbutusSlab(
                fontSize: 20,
              ),
            ),
          ],
        )
      ],
    ),
  );
}
