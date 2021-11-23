// ignore_for_file: annotate_overrides, file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Explicacion2_EQ extends StatelessWidget {
  const Explicacion2_EQ({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          //SizedBox(height: 20,),
          customAppBar(context),
          //barra(context),
          //formula(context),
          //explicacion1(context),
          //SizedBox(height: 20),

          //botonFinal(context),
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

  Widget listaVertical(context) {
    return Column(
//      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              formula(context),
              explicacion1(context),

              //barra1EQ(),
              //formula1EQ(),
              //texto1EQ(),
              //botonFinal1EQ(),
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
          Image.asset('assets/imgs/explicacion2_EQ.png'),
        ],
      ),
    );
  }

  Widget formula(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 75, vertical: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/imgs/formula1.png',
          ),
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
            'Las letras entre paréntesis rectangular\nindican concentración molar de\nreactivo o producto y los exponentes\nson los coeficientes estequiométricos\nrespectivos en la reacción.\nK = cte. de cada reacción en el equilibrio\nK < 1 ; entonces la reacción es muy\nreversible y se dice que se encuentra\ndesplazada a la izquierda. \nK = 1 ; es una reacción en la que se\nobtiene 50% de reactivos y 50% de\nproductos.\nSi K > 1 ; la reacción tiene un\nrendimiento alto y se dice que esta\ndesplazada a la derecha.',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 20,
                letterSpacing: -0.4399999976158142,
                fontWeight: FontWeight.normal,
                height: 2.2),
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
                  Navigator.pushNamed(context, "back2_EQ");
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
                  Navigator.pushNamed(context, "next2_EQ");
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
