// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class Explicacion5_NQ extends StatelessWidget {
  const Explicacion5_NQ({Key? key}) : super(key: key);

  @override
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
          listaVertical(context),
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
            'assets/imgs/nomenclatura.png',
            height: 70,
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
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 100, vertical: 0),
        ),
        Container(
          height: 578,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              barra(context),
              explicacion1(context),
              img(context),
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
          Image.asset('assets/imgs/NomeclaturaC.png'),
        ],
      ),
    );
  }

  Widget img(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/imgs/imagen26.png',
            height: 400,
            width: 400,
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
            'Nombra las sustancias con prefijos numéricos griegos. Estos indican la atomicidad (número de átomos) presente en las moléculas. La fórmula para nombrar los compuestos puede resumirse de la siguiente manera: prefijo-nombre genérico + prefijo-nombre específico.',
            style: GoogleFonts.redHatDisplay(
              fontSize: 20,
              letterSpacing: 1.2,
              fontWeight: FontWeight.normal,
            ),
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
                  Navigator.pushNamed(context, "explicacion4_NQ");
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
                  Navigator.pushNamed(context, "explicacion6_NQ");
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
