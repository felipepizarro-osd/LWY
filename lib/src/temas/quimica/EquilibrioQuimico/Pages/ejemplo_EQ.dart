// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Ejemplo_EQ extends StatelessWidget {
  const Ejemplo_EQ({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          customAppBar(context),

          barra(context),
          explicacion1(context),
          SizedBox(height: 5),
          explicacion2(context),
          SizedBox(height: 20),
          formula(context),
          SizedBox(height: 10),
          explicacion3(context),
          SizedBox(height: 20),
          botonFinal(context),
          
        ],
      ),
    );
  }

  Widget customAppBar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17.2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            'assets/imgs/equilibrio.png',
            height: 56,
            width: 212,
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

  Widget barra(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset('assets/imgs/ejemplo_EQ.png'),
        ],
      ),
    );
  }

  Widget explicacion1(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Figma Flutter Generator EselestadoalquesellegaalfinaldecualquiersistemaqumicolaexpresinmatemticaquerepresentaalequilibrioqumicoseconocecomoleydeaccindemasasparacualquierreaccinWidget - TEXT
          Text(
            'La constante Kc del equilibrio: 3 H2(g) + N2(g) ↔ 2 NH3(g). a 150 ºC y 200 atm es 0,55.¿Cuál es la concentración de amoniaco cuando las concentraciones de N2 e H2 en el equilibrio son 0,20 mol/L y 0,10 mol/L respectivamente?',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 19,
                letterSpacing: -0.4399999976158142,
                fontWeight: FontWeight.bold,
                height: 1.9),
          )
        ],
      ),
    );
  }

  Widget explicacion2(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Equilibrio: 3 H2(g) + N2(g) ↔ 2 NH3(g)',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 19,
                letterSpacing: -0.4399999976158142,
                fontWeight: FontWeight.bold,
                height: 1.9),
          )
        ],
      ),
    );
  }  

  Widget formula(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/imgs/formula3.png',
          ),
        ],
      ),
    );
  }

  Widget explicacion3(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Figma Flutter Generator EselestadoalquesellegaalfinaldecualquiersistemaqumicolaexpresinmatemticaquerepresentaalequilibrioqumicoseconocecomoleydeaccindemasasparacualquierreaccinWidget - TEXT
          Text(
            'Realizando el despeje: [NH3] = 0,01 M',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 19,
                letterSpacing: -0.4399999976158142,
                fontWeight: FontWeight.bold,
                height: 1.9),
          )
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
                  Navigator.pushNamed(context, "back7_EQ");
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

        ],
      ),
    );
  }
}
