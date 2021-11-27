// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/componentes/chemistry_option.dart';
import 'package:flutter_application_2/src/componentes/computer_option.dart';
import 'package:flutter_application_2/src/componentes/math_option.dart';
import 'package:flutter_application_2/src/componentes/physical_option.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,

        //color: Colors.grey[100],
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
            'assets/imgs/inicio.png',
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

  Widget listaVertical(BuildContext context) {
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
              Informatica(context),
              Matematicas(context),
              Fisica(context),
              Quimica(context),
            ],
          ),
        ),
      ],
    );
  }

Widget Informatica (BuildContext context){
      return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            Container(
              width: 379,
              height: 174,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                //color de fondo
                color: Color.fromRGBO(254, 202, 255, 1),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 10),
                  Container(
                    width: 364.5,
                    height: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      //color de la franja
                      color: Color.fromRGBO(157, 194, 255, 1),
                      
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      const SizedBox(height: 85, width: 20),
      // Figma Flutter Generator H6Widget - TEXT
                      Text('Informática', textAlign: TextAlign.left, style: TextStyle(
                        color: Color.fromRGBO(25, 25, 29, 1),
                        fontFamily: 'Red Hat Display',
                        fontSize: 34,
                        letterSpacing: -0.4399999976158142,
                        fontWeight: FontWeight.bold,
                        height: 1.2941176470588236
                      ),)

                    ],
                  ),

                  Image.asset('assets/imgs/matematicas/barra.png'),
                  
                  const SizedBox(height: 2),
                ],
              ),
            ),
            MaterialButton(
              elevation: 10,
              minWidth: 379,
              height: 174,
              onPressed: () {
                Navigator.pushNamed(context, "informatica");
              },
            ),
          ],
        ),
        SizedBox(height: 20),
      ],
    );

}

Widget Matematicas (BuildContext context){
      return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            Container(
              width: 379,
              height: 174,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                //color de fondo
                color: Color.fromRGBO(99, 133, 255, 1),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 10),
                  Container(
                    width: 364.5,
                    height: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      //color de la franja
                      color: Color.fromRGBO(157, 194, 255, 1),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      const SizedBox(height: 85, width: 20),
      // Figma Flutter Generator H6Widget - TEXT
                      Text('Matemáticas', textAlign: TextAlign.left, style: TextStyle(
                        color: Color.fromRGBO(25, 25, 29, 1),
                        fontFamily: 'Red Hat Display',
                        fontSize: 34,
                        letterSpacing: -0.4399999976158142,
                        fontWeight: FontWeight.bold,
                        height: 1.2941176470588236
                      ),)

                    ],
                  ),

                  Image.asset('assets/imgs/matematicas/barra.png'),
                  
                  const SizedBox(height: 2),
                ],
              ),
            ),
            MaterialButton(
              elevation: 10,
              minWidth: 379,
              height: 174,
              onPressed: () {
                Navigator.pushNamed(context, "matematica");
              },
            ),
          ],
        ),
        SizedBox(height: 20),
      ],
    );

}

Widget Fisica (BuildContext context){
      return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            Container(
              width: 379,
              height: 174,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                //color de fondo
                color: Color.fromRGBO(247, 220, 111, 1),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 10),
                  Container(
                    width: 364.5,
                    height: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      //color de la franja
                      color: Color.fromRGBO(157, 194, 255, 1),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      const SizedBox(height: 85, width: 20),
      // Figma Flutter Generator H6Widget - TEXT
                      Text('Física', textAlign: TextAlign.left, style: TextStyle(
                        color: Color.fromRGBO(25, 25, 29, 1),
                        fontFamily: 'Red Hat Display',
                        fontSize: 34,
                        letterSpacing: -0.4399999976158142,
                        fontWeight: FontWeight.bold,
                        height: 1.2941176470588236
                      ),)

                    ],
                  ),

                  Image.asset('assets/imgs/matematicas/barra.png'),
                  
                  const SizedBox(height: 2),
                ],
              ),
            ),
            MaterialButton(
              elevation: 10,
              minWidth: 379,
              height: 174,
              onPressed: () {
                Navigator.pushNamed(context, "fisica");
              },
            ),
          ],
        ),
        SizedBox(height: 20),
      ],
    );

}

Widget Quimica (BuildContext context){
      return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            Container(
              width: 379,
              height: 174,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                //color de fondo
                color: Color.fromRGBO(19, 141, 117, 0.99),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 10),
                  Container(
                    width: 364.5,
                    height: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      //color de la franja
                      color: Color.fromRGBO(157, 194, 255, 1),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      const SizedBox(height: 85, width: 20),
      // Figma Flutter Generator H6Widget - TEXT
                      Text('Química', textAlign: TextAlign.left, style: TextStyle(
                        color: Color.fromRGBO(25, 25, 29, 1),
                        fontFamily: 'Red Hat Display',
                        fontSize: 34,
                        letterSpacing: -0.4399999976158142,
                        fontWeight: FontWeight.bold,
                        height: 1.2941176470588236
                      ),)

                    ],
                  ),

                  Image.asset('assets/imgs/matematicas/barra.png'),
                  
                  const SizedBox(height: 2),
                ],
              ),
            ),
            MaterialButton(
              elevation: 10,
              minWidth: 379,
              height: 174,
              onPressed: () {
                Navigator.pushNamed(context, "quimica");
              },
            ),
          ],
        ),
        SizedBox(height: 20),
      ],
    );

}
  
}
