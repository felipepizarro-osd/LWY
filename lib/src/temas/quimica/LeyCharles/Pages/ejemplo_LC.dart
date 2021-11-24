// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Ejemplo_LC extends StatelessWidget {
  const Ejemplo_LC({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          customAppBar(context),
          this.listaVertical(context),
          
        ],
      ),
    );
  }

  Widget listaVertical(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 100, vertical: 0),
        ),
        Container(
          height: 590,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              barra(context),
              explicacion1(context),
              SizedBox(height: 5),
              formula1(context),
              SizedBox(height: 20),
              explicacion2(context),
              formula2(context),
              SizedBox(height: 15),
              formula3(context),
              SizedBox(height: 10),
              explicacion3(context),
              SizedBox(height: 10),
              formula4(context),
              
              
              SizedBox(height: 20),
              botonFinal(context),
            ],
          ),
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
            'assets/imgs/leyCharles.png',
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
          Image.asset('assets/imgs/ejemplo_LC.png'),
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
            'Un gas tiene un volumen de 2.5 L a 25 °C. ¿Cuál será su nuevo volumen si bajamos la temperatura a 10 °C?',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 19,
                letterSpacing: -0.4399999976158142,
                fontWeight: FontWeight.bold,
                height: 1.9),
          ),
          Text(
            'Primero expresamos la temperatura en kelvin:',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 19,
                letterSpacing: -0.4399999976158142,
                fontWeight: FontWeight.bold,
                height: 1.9),
          ),

        ],
      ),
    );
  }

  Widget formula1(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'T1 = (25 + 273) K= 298 K\nT2 = (10 + 273 ) K= 283 K',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 19,
                letterSpacing: -0.4399999976158142,
                fontWeight: FontWeight.bold,
                height: 1.9),
          ),
        ],
      ),
    );
  }  

  Widget explicacion2(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Ahora sustituimos los datos en la ecuación:',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 19,
                letterSpacing: -0.4399999976158142,
                fontWeight: FontWeight.bold,
                height: 1.9),
          ),
        ],
      ),
    );
  } 

  Widget formula2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/imgs/ejemplo1LC.png',
          ),
        ],
      ),
    );
  }

  Widget formula3(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 60, vertical: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/imgs/ejemplo2LC.png',
          ),
        ],
      ),
    );
  }  

  Widget formula4(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/imgs/ejemplo3LC.png',
          ),
        ],
      ),
    );
  }  

  Widget explicacion3(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Figma Flutter Generator EselestadoalquesellegaalfinaldecualquiersistemaqumicolaexpresinmatemticaquerepresentaalequilibrioqumicoseconocecomoleydeaccindemasasparacualquierreaccinWidget - TEXT
          Text(
            'Y despejando:',
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
                  Navigator.pushNamed(context, "back3_LC");
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
