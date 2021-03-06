// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ejercicio2_CE extends StatelessWidget {
  const ejercicio2_CE({Key? key}) : super(key: key);

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
            'Campo Electrico',
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

  Widget barra(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset('assets/imgs/fisica/ejercicio_CE.png'),
        ],
      ),
    );
  }

  Widget cuerpo(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // Figma Flutter Generator EselestadoalquesellegaalfinaldecualquiersistemaqumicolaexpresinmatemticaquerepresentaalequilibrioqumicoseconocecomoleydeaccindemasasparacualquierreaccinWidget - TEXT
          Text(
            'Solucion:',
            style: GoogleFonts.redHatDisplay(
              fontSize: 18,
              color: const Color.fromRGBO(245, 136, 35, 1),
              letterSpacing: 1.2,
            ),
          ),
          Text(
            'Para poder solucionar el problema, basta nuevamente en colocar nuestros datos en la f??rmula.',
            style: GoogleFonts.redHatDisplay(
              fontSize: 18,
              letterSpacing: 1.2,
            ),
          ),
          Image.asset(
            "assets/imgs/image35.png",
            width: 260,
            height: 80,
            scale: 0.5,
          ),
          Text(
            'Al retirar la carga q y colocar en P una carga positiva de ',
            style: GoogleFonts.redHatDisplay(
              fontSize: 18,
              letterSpacing: 1.2,
            ),
          ),
          Image.asset(
            "assets/imgs/image36.png",
            width: 200,
            height: 100,
            scale: 0.5,
          ),
          Text(
            '??Cu??l ser?? el valor de la fuerza F que actuar?? sobre esa carga, y cu??l es el sentido del movimiento que tender?? a adquirir?\nPara poder solucionar esta parte, es necesario sustituir el nuevo valor de la carga en la f??rmula, Pero con la condici??n de que ahora la fuerza ser?? la inc??gnita, es decir:',
            style: GoogleFonts.redHatDisplay(
              fontSize: 18,
              letterSpacing: 1.2,
            ),
          ),
          Text(
            '\nF = qE\n ',
            style: GoogleFonts.redHatDisplay(
              fontSize: 35,
              letterSpacing: 1.2,
            ),
          ),
          Text(
            'Hemos despejado F de la ecuaci??n de campo el??ctrico, entonces despu??s de esto reemplazamos los datos ',
            style: GoogleFonts.redHatDisplay(
              fontSize: 18,
              letterSpacing: 1.2,
            ),
          ),
          Image.asset(
            "assets/imgs/image37.png",
            width: 450,
            height: 100,
            scale: 0.6,
          ),
          Image.asset(
            "assets/imgs/image38.png",
            width: 450,
            height: 100,
            scale: 0.6,
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
                  Navigator.pop(context);
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
