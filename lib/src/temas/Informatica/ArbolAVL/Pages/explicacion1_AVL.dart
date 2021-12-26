// ignore_for_file: file_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../ChewieListItem.dart';

class Explicacion1_AVL extends StatelessWidget {
  const Explicacion1_AVL({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          customAppBar(context),
          VideoConteiner(context),
          //explicacion(context),
          Ex2(context),
          customAppBar1(context),
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
          'assets/imgs/videos/Video_AVL.mp4',
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
          'assets/imgs/arbolo.png',
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

Widget Ex2(BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17.2),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Image.asset(
          'assets/imgs/Ex.AVL.png',
          height: 150,
          width: 380,
          fit: BoxFit.fitWidth,
        ),
      ],
    ),
  );
}

//customiza los botones para hacer menu de botones con imagen presionables
Widget customAppBar1(BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17.2),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        GestureDetector(
          onTap: () => launchURL1(),
          child: Image.asset('assets/imgs/JavaIcon.png'),
        ),
        GestureDetector(
          onTap: () => launchURL2(),
          child: Image.asset('assets/imgs/PythonIcon.png'),
        ),
        GestureDetector(
          onTap: () => launchURL3(),
          child: Image.asset('assets/imgs/CIcon.png'),
        )
      ],
    ),
  );
}

//lanzamientos de paginas
launchURL1() async {
  const url = 'https://replit.com/join/doomeykxes-felipepizarroos';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

launchURL2() async {
  const url = 'https://replit.com/join/kilfpyscxe-felipepizarroos';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

launchURL3() async {
  const url = 'https://replit.com/join/tftlclqxhp-felipepizarroos';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

@override
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
