// ignore_for_file: file_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

import 'ChewieListItem.dart';

class Explicacion1_AVL extends StatelessWidget {
  const Explicacion1_AVL({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          customAppBar(context),
          VideoConteiner(context),
          explicacion(context),
          botonFinal(context),
        ],
      ),
    );
  }
}

Widget explicacion(BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17.2),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "El arbol AVL en terminos sencillos es un tipo de arbol binario de busqueda que a diferencias de sus hermanos nuncase convierte en una lista\nenlazada ya que posee la\ncapacidad de autobalancearse",
          style: GoogleFonts.redHatDisplay(
            fontSize: 18,
            letterSpacing: 1.2,
          ),
        ),
      ],
    ),
  );
}

Widget VideoConteiner(BuildContext context) {
  return Column(
    children: <Widget>[
      ChewieListItem(
        videoPlayerController: VideoPlayerController.asset(
          'assets/imgs/videos/video11.mp4',
        ),
        looping: true,
      ),
    ],
  );
}

Widget customAppBar(BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17.2),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Image.asset(
          'assets/imgs/arbolavlvideo.png',
          height: 76,
          width: 230,
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

Widget botonFinal(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17.2),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        //Boton Back
        Row(
          children: <Widget>[
            TextButton(
              child: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pushNamed(context, "informatica");
              },
            ),
            Text(
              'Prev',
              style: GoogleFonts.arbutusSlab(
                fontSize: 20,
              ),
            ),
          ],
        ),
        //Botón Next
        Row(
          children: <Widget>[
            Text(
              'Next',
              style: GoogleFonts.arbutusSlab(
                fontSize: 20,
              ),
            ),
            TextButton(
              child: const Icon(Icons.arrow_forward),
              onPressed: () {
                Navigator.pushNamed(context, "informatica"); //next
              },
            ),
          ],
        ),
      ],
    ),
  );
}
