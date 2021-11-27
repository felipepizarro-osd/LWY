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
          barra1(context),
          customAppBar(context),
        ],
      ),
    );
  }
}

Widget customAppBar(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
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
        const SizedBox(height: 10),
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

  Widget barra1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical:0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            'assets/imgs/matematicas/temasG.png',
          ),
          IconButton(
            iconSize: 43,
            icon: Image.network(
                'https://lh3.googleusercontent.com/-TG6ztsHV91s/YYIQpvM2P6I/AAAAAAAAAA4/_Yk-veTi2FsT0lysAtNjwnhX3BaBkCs3QCLcBGAsYHQ/Userpic.png'),
            onPressed: () {
              Navigator.pushNamed(context, "perfil");
            },
          ),
        ],
      ),
    );
  } 
