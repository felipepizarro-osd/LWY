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
          barra1(context),
          customAppBar(context),
        ],
      ),
    );
  }
}

Widget customAppBar(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
        //const SizedBox(height: 60),
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