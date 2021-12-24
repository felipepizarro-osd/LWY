// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Explicacion1_LCo extends StatelessWidget {
  const Explicacion1_LCo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 26,
          ),
          customAppBar(context),
          listaVertical(context),
        ],
      ),
    );
  }

  Widget listaVertical(context) {
    return Column(
//      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,

      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 100, vertical: 0),
        ),
        SizedBox(
          height: 583,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              barra(context),
              //formula(context),
              cuerpo(context),
              botonFinal(context),
            ],
          ),
        ),
      ],
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

  Widget botonFinal(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17.2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          //Boton Back
          Row(
            children: <Widget>[
              TextButton(
                child: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pushNamed(context, "homeLC");
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
        ],
      ),
    );
  }

  Widget cuerpo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17.2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'La ley de Coulomb se emplea en el área de la física para calcular la fuerza eléctrica que actúa entre dos cargas en reposo. A partir de esta ley se puede predecir cuál será la fuerza electrostática de atracción o repulsión existente entre dos partículas según su carga eléctrica y la distancia que existe entre ambas. Esta ley se representa de la siguiente manera:',
            style: GoogleFonts.redHatDisplay(
              fontSize: 18,
              letterSpacing: 1.2,
            ),
          ),
          Image.asset(
            "assets/imgs/image10.png",
            width: 490,
            height: 170,
          ),
          Text(
            '-F = fuerza eléctrica de atracción o repulsión en Newtons (N). Las cargas iguales se repelen y las cargas opuestas se atraen. -k = es la constante de Coulomb o constante eléctrica de proporcionalidad. La fuerza varía según la permitividad eléctrica (ε) del medio, bien sea agua, aire, aceite, vacío, entre otros. q = valor de las cargas eléctricas medidas en Coulomb (C). r = distancia que separa a las cargas y que es medida en metros (m). Cabe destacar que la permitividad eléctrica del vacío es constante, y una de las más empleadas. Se calcula de la siguiente manera: ε​​​​​​0 = 8,8541878176x10-12 C2 / (N·m2). Es de suma importancia tener en cuenta la permitividad del material. El valor de la constante de Coulomb en el Sistema Internacional de medidas es:',
            style: GoogleFonts.redHatDisplay(
              fontSize: 18,
              letterSpacing: 1.2,
            ),
          ),
          Image.asset(
            "assets/imgs/image11.png",
            width: 490,
            height: 170,
          ),
        ],
      ),
    );
  }

  Widget barra(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset('assets/imgs/explicacion_LC.png'),
        ],
      ),
    );
  }
}
