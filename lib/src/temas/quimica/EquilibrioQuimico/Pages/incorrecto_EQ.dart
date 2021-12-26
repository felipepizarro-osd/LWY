
// ignore_for_file: annotate_overrides, file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class incorrecto_EQ extends StatelessWidget {
  const incorrecto_EQ({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
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
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        ),
        Container(
          height: 570,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[           
              barra(context),
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
          Image.asset('assets/imgs/im1.png'),
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
          Text(
            ' · Primero se establece las concentraciones inciales y luego las equilibradas:',
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
          foto(context),     
          SizedBox(height: 5),

          Text(
            ' · Luego aplicamos la formula de ley de acción de masas con los datos obtenidos:',
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
          
          foto2(context) ,
          SizedBox(height: 15), 
          foto3(context),
          SizedBox(height: 15), 
          Text(
            'Por lo tanto, la constante Kc es 0,083M',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0,0, 0, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 20,
                letterSpacing: -0.44,
                fontWeight: FontWeight.normal,
                height: 1.5),
          ),       
          SizedBox(height: 15,),          

        ],
      ),
    );
  }
 


  Widget foto(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          //SizedBox(height: 25,),
          Image.asset(
            'assets/imgs/eq1.png',
          ),
          SizedBox(height: 15,),
          Image.asset(
            'assets/imgs/eq2.png',
          ),
          SizedBox(height: 25,),
          

        ],
      ),
    );
  }

  Widget foto2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          //SizedBox(height: 25,),
          Image.asset(
            'assets/imgs/eq3.png',
          ),

        ],
      ),
    );
  }

    Widget foto3(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          //SizedBox(height: 25,),
          Image.asset(
            'assets/imgs/eq4.png',
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
 
}

