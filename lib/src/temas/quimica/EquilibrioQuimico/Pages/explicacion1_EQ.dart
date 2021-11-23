// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Explicacion1_EQ extends StatelessWidget {
  const Explicacion1_EQ({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          customAppBar(context),
          SizedBox(
            height: 0,
          ),
          barra(context),

          explicacion1(context),
          SizedBox(height: 20),
          AyB(context),
          botonFinal(context),
          //Ejercicios_balance(),
          //this.Botonera(context),
          //customAppBar2(context),
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
          Image.asset('assets/imgs/explicacion1_EQ.png'),
        ],
      ),
    );
  }

  Widget explicacion1(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Figma Flutter Generator EselestadoalquesellegaalfinaldecualquiersistemaqumicolaexpresinmatemticaquerepresentaalequilibrioqumicoseconocecomoleydeaccindemasasparacualquierreaccinWidget - TEXT
          Text(
            'Es el estado al que se llega al final\nde cualquier sistema químico.\nLa expresión matemática que \nrepresenta al Equilibrio Químico,\nse conoce como Ley de Acción de\nMasas. Para cualquier reacción:',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 22,
                letterSpacing: -0.4399999976158142,
                fontWeight: FontWeight.normal,
                height: 2),
          )
        ],
      ),
    );
  }

  Widget AyB (BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            'assets/imgs/a.png',
          ),

          Image.asset(
            'assets/imgs/+.png',

          ),

          Image.asset(
            'assets/imgs/b.png',
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
                  Navigator.pushNamed(context, "back1_EQ");
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
                  Navigator.pushNamed(context, "next1_EQ");
                },
              ),

            ],
          )   

        ],
      ),
    );
  }  



}
