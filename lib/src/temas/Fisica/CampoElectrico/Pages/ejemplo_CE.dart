// ignore_for_file: annotate_overrides, unnecessary_this, file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Ejemplo_CE extends StatelessWidget {
  const Ejemplo_CE({Key? key}) : super(key: key);

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
            'assets/imgs/fisica/campoElectrico.png',
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
              formula(context),
              SizedBox(height: 10,),
              formula2(context),
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
          Image.asset('assets/imgs/fisica/ejemplo_CE.png'),
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
            'Una carga de 5×10^-6 C se introduce a una región donde actúa un campo de fuerza de 0.04N. ¿Cuál es la intensidad del campo eléctrico en esa región?',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 18,
                letterSpacing: -0.4399999976158142,
                fontWeight: FontWeight.normal,
                height: 2),
          ),
          SizedBox(height: 5),
          Text(
            'Solución',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(245, 136, 35, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 18,
                letterSpacing: -0.4399999976158142,
                fontWeight: FontWeight.bold,
                height: 2),
          ),   

          Text(
            'En este problema se empleará la siguiente fórmula de campo eléctrico, pero haciendo uso de la distancia. Para ello colocamos los datos:',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 18,
                letterSpacing: -0.4399999976158142,
                fontWeight: FontWeight.normal,
                height: 2),
          ),                 
          SizedBox(height: 15,),        
        ],
      ),
    );
  }

  Widget formula(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 0),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            'assets/imgs/fisica/form1.png',
          ),
          SizedBox(height: 20),

          Image.asset(
            'assets/imgs/fisica/form2.png',
          ),          

          SizedBox(height: 20,width: 0,),
          Text(
            'Sabemos que la fórmula es la siguiente:',
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 16,
                letterSpacing: -0.4399999976158142,
                fontWeight: FontWeight.normal,
                height: 2),
          ),    

          Image.asset(
            'assets/imgs/fisica/form3.png',
          ),              
          SizedBox(height: 20,width: 0,),     

          Text(
            'Sustituyendo los datos en la fórmula:',
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 16,
                letterSpacing: -0.4399999976158142,
                fontWeight: FontWeight.normal,
                height: 2),
          ),                   
        ],
      ),
    );
  }

  Widget formula2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/imgs/fisica/form4.png',
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
