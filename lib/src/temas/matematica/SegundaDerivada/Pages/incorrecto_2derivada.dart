
// ignore_for_file: annotate_overrides, file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class incorrecto_2derivada extends StatelessWidget {
  const incorrecto_2derivada({Key? key}) : super(key: key);

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
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        ),
        Container(
          height: 570,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[           
              barra(context),
              SizedBox(height: 10,),
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

  Widget barra(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset('assets/imgs/matematicas/explicacionIncorrecta_SR.png'),
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
 

  Widget explicacion(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[ 

          foto(context),
          Text(
            ' · Calculamos la primera derivada.',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0,0, 0, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 20,
                letterSpacing: -0.44,
                fontWeight: FontWeight.normal,
                height: 1.5),
          ),          
          SizedBox(height: 10),
          foto2(context),     
          SizedBox(height: 5),

          Text(
            ' · Calculamos los puntos críticos.',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0,0, 0, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 20,
                letterSpacing: -0.44,
                fontWeight: FontWeight.normal,
                height: 1.5),
          ),   
          SizedBox(height: 10),  
          foto3(context),     
          SizedBox(height: 5), 
          Text(
            ' · Calculamos la segunda derivada.',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0,0, 0, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 20,
                letterSpacing: -0.44,
                fontWeight: FontWeight.normal,
                height: 1.5),
          ),       
          foto6(context)                                ,
          SizedBox(height: 15,),
          Text(
            ' · Evaluamos la segunda derivada en los puntos críticos',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0,0, 0, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 20,
                letterSpacing: -0.44,
                fontWeight: FontWeight.normal,
                height: 1.5),
          ),       
          foto7(context),
          SizedBox(height: 25,),
          Text(
            'Por lo tanto, la función del Monte Everest tiene un máximo local en x = 1 y un mínimo local en x = -1',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0,0, 0, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 20,
                letterSpacing: -0.44,
                fontWeight: FontWeight.normal,
                height: 1.5),
          ),     
          SizedBox(height: 15,)  ,
          foto8(context),
          SizedBox(height: 15,)  ,
          Text(
            'Representación gráfica: ',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(255, 12, 12, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 20,
                letterSpacing: -0.44,
                fontWeight: FontWeight.normal,
                height: 1.5),
          ),

          Image.asset(
            'assets/imgs/matematicas/monteEvrerest.png',
          ),          
          

        ],
      ),
    );
  }  

  Widget foto(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 70, vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          //SizedBox(height: 25,),
          Image.asset(
            'assets/imgs/matematicas/d1.png',
          ),

        ],
      ),
    );
  }

  Widget foto2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 70, vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          //SizedBox(height: 25,),
          Image.asset(
            'assets/imgs/matematicas/d2.png',
          ),

        ],
      ),
    );
  }

    Widget foto3(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 70, vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          //SizedBox(height: 25,),
          Image.asset(
            'assets/imgs/matematicas/d3.png',
          ),
          SizedBox(height: 15,),
          Image.asset(
            'assets/imgs/matematicas/d4.png',
          ),
          SizedBox(height: 15,),
                    Image.asset(
            'assets/imgs/matematicas/d5.png',
          ),         
          SizedBox(height: 15,), 

        ],
      ),
    );
  }

    Widget foto6(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 70, vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          //SizedBox(height: 25,),
          Image.asset(
            'assets/imgs/matematicas/d6.png',
          ),

        ],
      ),
    );
  } 

    Widget foto7(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 00, vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          //SizedBox(height: 25,),
          Image.asset(
            'assets/imgs/matematicas/d7.png',
          ),

        ],
      ),
    );
  }

    Widget foto8(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          //SizedBox(height: 25,),
          Image.asset(
            'assets/imgs/matematicas/d8.png',
          ),

        ],
      ),
    );
  }    
}

