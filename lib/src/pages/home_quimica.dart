import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/temas/quimica/homepagecomponents/EncabezadoQ.dart';
import 'package:flutter_application_2/src/temas/quimica/homepagecomponents/equilibrio.dart';
import 'package:flutter_application_2/src/temas/quimica/homepagecomponents/leycharles.dart';
import 'package:flutter_application_2/src/temas/quimica/homepagecomponents/nomeclatura.dart';

import 'package:google_fonts/google_fonts.dart';

class HomePageQuimica extends StatelessWidget {
  const HomePageQuimica({Key? key}) : super(key: key);

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
        const EncabezadoQ(),
        const SizedBox(height: 10),
        Row(
          children: const <Widget>[
            SizedBox(width: 20),
            Nomeclatura(),
            SizedBox(width: 20),
            EquilibrioQ(),
          ],
        ),
        const SizedBox(height: 25),
        const LeyCharles(),
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
