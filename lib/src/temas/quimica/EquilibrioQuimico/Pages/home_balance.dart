import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/temas/quimica/EquilibrioQuimico/Componentes/ejemplos.dart';
import 'package:flutter_application_2/src/temas/quimica/EquilibrioQuimico/Componentes/ejercicios.dart';
import 'package:flutter_application_2/src/temas/quimica/EquilibrioQuimico/Componentes/explicacion.dart';
import 'package:google_fonts/google_fonts.dart';

class EquilibrioQuimico extends StatelessWidget {
  const EquilibrioQuimico({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: 20,),
          customAppBar(context),
          SizedBox(height: 40,),
          Explicacion_balance(),
          SizedBox(height: 20,),
          Ejemplos_balance(),
          SizedBox(height: 20),
          Ejercicios_balance(),
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

  Widget Botonera(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,

      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 100, vertical: 0),
        ),
        Container(
          height: 300,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Explicacion_balance(),
              Explicacion_balance(),
              Explicacion_balance(),

            ],
          ),
        ),

      ],      

    );



  }

  Widget customAppBar2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17.2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            iconSize: 60,
            icon: Image.asset('assets/imgs/back.png',height: 50,
            width: 200),
            onPressed: () {
              Navigator.pushNamed(context, "perfil");
            },
          ),
        ],
      ),
    );
  }  




}
