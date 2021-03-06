// ignore_for_file: annotate_overrides, non_constant_identifier_names, file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Explicacion2_SR extends StatelessWidget {
  const Explicacion2_SR({Key? key}) : super(key: key);

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
          height: 590,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              barra(context),
              explicacion1(context),
              SizedBox(height: 25,),
              ejemplo(context),
              formula(context),
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
          Image.asset('assets/imgs/matematicas/explicacion_SR.png'),
        ],
      ),
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
            '??Como se c??lcula el v??lumen de un S??lido de Revoluci??n?',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(81, 195, 27, 1),
                fontFamily: 'Red Hat Text',
                fontSize: 24,
                letterSpacing: -0.44,
                fontWeight: FontWeight.bold,
                height: 1),
          ),

          SizedBox(height: 20,),
          Text(
            'En general, para el c??lculo del v??lumen de un s??lido de revoluci??n se puede recurrir al c??lculo integral. Una forma, llamada el m??todo de discos, consiste en dividir la figura en infinitos discos o porciones circulares, haciendo una sumatoria de sus v??lumenes.',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0,0,0,1),
                fontFamily: 'Red Hat Text',
                fontSize: 24,
                letterSpacing: -0.44,
                fontWeight: FontWeight.normal,
                height: 1.5),
          )          


        ],
      ),
    );
  }

  Widget formula(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 70, vertical: 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          //Semicirculo -----> Esfera
          Text(
            'F??rmula del M??todo del Disco:',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(255, 12, 12, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 18,
                letterSpacing: -0.44,
                fontWeight: FontWeight.bold,
                height: 1.5),
          ),

          SizedBox(height: 5,),
          Image.asset(
            'assets/imgs/matematicas/formulaDisco.png',
          ),

        ],
      ),
    );
  }
  

  Widget ejemplo (BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            Container(
            width: 360,
            height:50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Color.fromRGBO(255, 183, 0, 1),),
              //color de fondo
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      '    Ejemplo de la vida cotidiana',
                      style: GoogleFonts.redHatDisplay(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromRGBO(25, 25, 29, 1)),
                          
                    ),

                    TextButton(
                      child: const Icon(Icons.add_circle_rounded,
                      size: 30,),
                      
                      onPressed: () {
                        Navigator.pushNamed(context, "vidaCotidiana");
                        
                      },
                    ),                    
                  ],
                ),                
              ],
            ),
          ),

        ],
          
      ),
      SizedBox(height: 20),




      ],
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
                  Navigator.pushNamed(context, "back2_SR");
                  
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
          //Bot??n Next
        ],
      ),
    );
  }
}
