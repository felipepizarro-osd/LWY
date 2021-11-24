// ignore_for_file: annotate_overrides, file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Explicacion2_LC extends StatelessWidget {
  const Explicacion2_LC ({Key? key}) : super(key: key);

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
              SizedBox(height: 20,),
              formula1(context),
              SizedBox(height: 50,),
              explicacion2(context),
              formula2(context),
              SizedBox(height: 30,),
              botonFinal(context),
            ],
          ),
        ),
      ],
    );
  }

  Widget barra(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset('assets/imgs/explicacion2_LC.png'),
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
            'La principal fórmula en que se expresa la ley de Charles es la siguiente:',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 22,
                letterSpacing: -0.4399999976158142,
                fontWeight: FontWeight.bold,
                height: 2),
          )
        ],
      ),
    );
  }  

  Widget formula1 (BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/imgs/ley1.png',
          ),
        ],
      ),
    );
  }

  Widget explicacion2(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Figma Flutter Generator EselestadoalquesellegaalfinaldecualquiersistemaqumicolaexpresinmatemticaquerepresentaalequilibrioqumicoseconocecomoleydeaccindemasasparacualquierreaccinWidget - TEXT
          Text(
            'Se debe tener en cuenta que ‘k2 ‘, es la constante de proporcionalidad, mientras que ‘V’ es volumen y ‘T’ es la temperatura absoluta (medida en Kelvin). Esta ley también puede expresarse de la siguiente forma:',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 22,
                letterSpacing: -0.4399999976158142,
                fontWeight: FontWeight.bold,
                height: 2),
          )
        ],
      ),
    );
  }  

    Widget formula2 (BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/imgs/ley2.png',
          ),
          Image.asset(
            'assets/imgs/ley3.png',
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
                  Navigator.pushNamed(context, "back2_LC");
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
