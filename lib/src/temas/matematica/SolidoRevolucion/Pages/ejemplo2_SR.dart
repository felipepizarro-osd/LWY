
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, annotate_overrides, file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Ejemplo2_SR extends StatelessWidget {
  const Ejemplo2_SR({Key? key}) : super(key: key);

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
              boton(context),              
              explicacion(context),
              SizedBox(height: 25,),
              botonFinal(context),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ],
    );
  }
  Widget explicacion(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

          Image.asset(
            'assets/imgs/matematicas/sr1.png',
          ),

          SizedBox(height: 10,),

          Text(
            '- Despejamos y para que nos diera una circunferencia completa de radio 16.',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0,0, 0, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 18,
                letterSpacing: -0.44,
                fontWeight: FontWeight.bold,
                height: 2),
          ),
          SizedBox(height: 10,),          

          Image.asset(
            'assets/imgs/matematicas/sr2.png',
          ),

          SizedBox(height: 5),

          Text(
            '- Encontramos sus intervalos',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0,0, 0, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 18,
                letterSpacing: -0.44,
                fontWeight: FontWeight.bold,
                height: 2),
          ),
          SizedBox(height: 5,),             

          Image.asset(
            'assets/imgs/matematicas/sr3.png',
          ),

          SizedBox(height: 5),

          Text(
            '- Los intervalos van a ser [0,4]',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0,0, 0, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 18,
                letterSpacing: -0.44,
                fontWeight: FontWeight.bold,
                height: 2),
          ),
          SizedBox(height: 5,),            

          Text(
            '- Utilizaremos el método de los discos ',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0,0, 0, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 18,
                letterSpacing: -0.44,
                fontWeight: FontWeight.bold,
                height: 2),
          ),
          SizedBox(height: 15,),       

          Text(
            'Fórmula del Método del Disco ',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(255, 12, 12, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 18,
                letterSpacing: -0.44,
                fontWeight: FontWeight.bold,
                height: 2),
          ),
          SizedBox(height: 10,),                 

          Image.asset(
            'assets/imgs/matematicas/sr4.png',
          ),

          Text(
            '- Lo hacemos girar por el eje de las y, y usamos rectángulos horizontales.',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0,0, 0, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 18,
                letterSpacing: -0.44,
                fontWeight: FontWeight.bold,
                height: 2),
          ),
          SizedBox(height: 10,),   

          Image.asset(
            'assets/imgs/matematicas/sr5.png',
          ),

          Text(
            'Por lo tanto, el vólumen del sartén de cocina sería de 128/3 π',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0,0, 0, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 18,
                letterSpacing: -0.44,
                fontWeight: FontWeight.bold,
                height: 2),
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
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          MaterialButton(
            elevation: 10,
            minWidth: 160,
            height: 25,
            color: Color.fromRGBO(242, 242, 242, 1),
            child: Text(
              'Ocultar explicación ...',
              style: TextStyle(
                color: Color.fromRGBO(43, 217, 0, 1),
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
