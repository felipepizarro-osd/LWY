// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Ejemplo1_LN extends StatelessWidget {
  const Ejemplo1_LN({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 7,
          ),
          customAppBar(context),
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
            'assets/imgs/leydenodos.png',
            height: 56,
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

  Widget barra(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset('assets/imgs/ejemploLN.png'),
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
                  Navigator.pushNamed(context, "homenodos");
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

  Widget cuerpo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17.2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'En la primera figura se puede observar el mas básico de los circuitos de corriente continua (CC) que contiene dos nodos.',
            style: GoogleFonts.redHatDisplay(
              fontSize: 18,
              letterSpacing: 1.2,
            ),
          ),
          Image.asset(
            "assets/imgs/image51.png",
            width: 500,
            height: 250,
          ),
          Text(
            "Observe que se trata de dos resistores de 1K (R1 y R2) conectados sobre una misma batería B1. La batería B1 conserva su tensión fija a pesar de la carga impuesta por los dos resistores; esto significa cada resistor tiene aplicada una tensión de 9V sobre él. La ley de Ohm indica que cuando a un resistor de 1K se le aplica una tensión de 9V por el circula una corriente de 9 mA. I = E/R = 9/1.000 = 0,009 A = 9 mA Por lo tanto podemos asegurar que cada resistor va a tomar una corriente de 9 mA de la batería o que entre ambos van a tomar 18 mA de la batería. También podríamos decir que desde la batería sale un conductor por el que circulan 18 mA que al llegar al nodo 1 se bifurca en una corriente de 9 mA que circula por cada resistor, de modo que en el nodo 2 se vuelven a unir para retornar a la batería con un valor de 18 mA.",
            style: GoogleFonts.redHatDisplay(fontSize: 18, letterSpacing: 1.2),
          ),
          Image.asset(
            "assets/imgs/image52.png",
            width: 500,
            height: 300,
            scale: 0.5,
          ),
          Text(
            'Es decir que en el nodo 1 podemos decir que I1 = I2 + I3 y reemplazando valores: que 1 8 mA = 9 mA + 9 mA y que en el nodo 2, I4 = I2 + I3. Las corriente I1 e I4 son iguales porque lo que egresa de la batería debe ser igual a lo que ingresa.',
            style: GoogleFonts.redHatDisplay(
              fontSize: 18,
              letterSpacing: 1.2,
            ),
          ),
        ],
      ),
    );
  }
}
