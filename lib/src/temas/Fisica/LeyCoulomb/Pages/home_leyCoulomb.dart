// ignore_for_file: annotate_overrides, file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class home_leyCoulomb extends StatelessWidget {
  const home_leyCoulomb({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: 15),
          customAppBar(context),
          SizedBox(height: 0),
          explicacion(context),
          SizedBox(height: 0),
          ejemplos(context),
          SizedBox(height: 0),
          ejercicios(context),
          aplicacion(context),
          botonFinal(context),
        ],
      ),
    );
  }

  Widget customAppBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            'assets/imgs/cajita.png',
            height: 60,
            width: 60,
          ),
          Text(
            'Ley de Coulomb',
            style: GoogleFonts.redHatDisplay(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
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

  Widget explicacion(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            Container(
              width: 293,
              height: 114,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                //color de fondo
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 10),
                  Container(
                    width: 279,
                    height: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      //color de la franja
                      color: Color.fromRGBO(157, 194, 255, 1),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      const SizedBox(height: 85, width: 25),
                      Text(
                        '    Explicaci??n',
                        style: GoogleFonts.redHatDisplay(
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromRGBO(25, 25, 29, 1)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 2),
                ],
              ),
            ),
            MaterialButton(
              elevation: 10,
              minWidth: 293,
              height: 114,
              onPressed: () {
                Navigator.pushNamed(context, "Explicacion1_LCo");
              },
            ),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }

  Widget ejemplos(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            Container(
              width: 293,
              height: 114,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                //color de fondo
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 10),
                  Container(
                    width: 279,
                    height: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      //color de la franja
                      color: Color.fromRGBO(238, 153, 68, 1),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      const SizedBox(height: 85, width: 25),
                      Text(
                        '    Ejemplos',
                        style: GoogleFonts.redHatDisplay(
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromRGBO(25, 25, 29, 1)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 2),
                ],
              ),
            ),
            MaterialButton(
              elevation: 10,
              minWidth: 293,
              height: 114,
              onPressed: () {
                Navigator.pushNamed(context, "Ejemplo1_LCo");
              },
            ),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }

  Widget ejercicios(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            Container(
              width: 293,
              height: 114,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                //color de fondo
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 10),
                  Container(
                    width: 279,
                    height: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      //color de la franja
                      color: Color.fromRGBO(221, 136, 202, 1),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      const SizedBox(height: 85, width: 25),
                      Text(
                        '    Ejercicios',
                        style: GoogleFonts.redHatDisplay(
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromRGBO(25, 25, 29, 1)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 2),
                ],
              ),
            ),
            MaterialButton(
              elevation: 10,
              minWidth: 293,
              height: 114,
              onPressed: () {
                Navigator.pushNamed(context, "Ejercicio1_LCo");
              },
            ),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }

  Widget aplicacion(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            Container(
              width: 293,
              height: 114,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                //color de fondo
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 10),
                  Container(
                    width: 279,
                    height: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      //color de la franja
                      color: Color.fromRGBO(170, 234, 148, 1),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      const SizedBox(height: 85, width: 25),
                      Text(
                        '    Aplicaci??n',
                        style: GoogleFonts.redHatDisplay(
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromRGBO(25, 25, 29, 1)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 2),
                ],
              ),
            ),
            MaterialButton(
              elevation: 10,
              minWidth: 293,
              height: 114,
              onPressed: () {
                Navigator.pushNamed(context, "Aplicacion1_LCo");
              },
            ),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }

  Widget botonFinal(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          //Boton Back
          Row(
            children: <Widget>[
              TextButton(
                child: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pushNamed(context, "back_fisica");
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
          //Bot??n Next
        ],
      ),
    );
  }
}
