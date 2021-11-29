
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, annotate_overrides, file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Ejemplo_SR extends StatelessWidget {
  const Ejemplo_SR({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          customAppBar(context),
          this.listaVertical(context)                    ,


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
            'assets/imgs/matematicas/solidoRevolucion.png',
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
          Image.asset('assets/imgs/matematicas/ejemplo_SR.png'),
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
          height: 570,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              SizedBox(
                height: 0,
              ),
              barra(context),
              SizedBox(height: 15,),
              explicacion1(context),
              foto(context),
              SizedBox(height: 25,),
              boton(context),
              SizedBox(height: 30,),
              botonFinal(context),
              SizedBox(height: 30,),
            ],
          ),
        ),
      ],
    );
  }
  Widget explicacion1(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // titulo

          Text(
            '¿Cómo se puede calcular el vólumen de  sólido de revolución de un sartén de cocina?',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(43, 217, 0, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 21,
                letterSpacing: -0.44,
                fontWeight: FontWeight.normal,
                height: 1.8),
          ),
          SizedBox(height: 15,),

          Text(
          'Las medidas de la circunferencia del sartén son  9 cm de profunidad y 16 cm de radio.\nEl sartén se ve representado por la función:',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0,0,0,1),
                fontFamily: 'Red Hat Text',
                fontSize: 18,
                letterSpacing: 0.1,
                fontWeight: FontWeight.normal,
                height: 1.2),
          )                   


        ],
      ),
    );
  }

  Widget foto(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 90, vertical:5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Image.asset(
            'assets/imgs/matematicas/f(x).png',
          ),
          SizedBox(height: 10,),
          Image.asset(
            'assets/imgs/matematicas/sarten.png',
          ),
        ],
      ),
    );
  }

  Widget botonFinal(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 1),
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
          //Botón Next

        ],
      ),
    );
  }

  Widget boton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 130, vertical: 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          MaterialButton(
            elevation: 10,
            minWidth: 118,
            height: 40,
            color: Color.fromRGBO(255, 255, 255, 1),
            child: Text(
              'Explicación',
              style: TextStyle(
                color: Color.fromRGBO(151, 118, 0, 1),
                fontSize: 19),
            ),
            onPressed: (){

            },

          ),


        ],
      ),
    );
  }  
}
