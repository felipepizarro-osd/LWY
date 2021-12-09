// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, avoid_print, file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Ejercicio1_SR extends StatelessWidget {
  late String respuesta;
  final _keyForm = GlobalKey<FormState>();
  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Form(
              key: _keyForm,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  customAppBar(context,),
                  barra(context,),
                  explicacion1(context),
                  Image.asset('assets/imgs/matematicas/cilindro.png'),
                  SizedBox(height: 5,),

                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '¿Que función ayudará al mecánico?',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              color: Color.fromRGBO(0,0,0,1),
                              fontFamily: 'Red Hat Text',
                              fontSize: 20,
                              letterSpacing: -0.44,
                              fontWeight: FontWeight.normal,
                              height: 1.63),
                        ),                         

                        SizedBox(height: 30,),
                        TextFormField(
                          validator: (valor) {
                            if (valor!.isEmpty) {
                              return 'numero vacio';
                            }

                            if (valor != 'y=5' && valor != 'y = 5' && valor != 'Y = 5' && valor != 'Y=5') {
                              return 'Respuesta incorrecta';
                            }

                            return null;
                          },
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
//                            icon: Icon(Icons.calendar_view_day),
                            labelText: 'Ingrese su respuesta',
                            border: OutlineInputBorder(),
                            isDense: false,
                            contentPadding: EdgeInsets.all(10),
                          ),
                        ),
                        
                        SizedBox(height: 30,),
                        Container(
                          width: 118,
                          height: 40,
                          child: RaisedButton(
                            child: Text(
                              'Comprobar',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            color: Colors.blue[600],
                            onPressed: () {
                              if (_keyForm.currentState!.validate()) {
                                print('Correcto');
                                //explicacion1(context);
                                //Navigator.pushNamed(context, "chupaloCarlo");

                              } else {
                                print("Ha ocurrido un error");

                                //Navigator.pushNamed(context, "chupaloCarlo");

                              }
                            },
                          ),
                        ),
                        SizedBox(height: 30,),

                        botonFinal(context),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

Pregunta(BuildContext context, GlobalKey<FormState> _keyForm, ) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17.2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Form(
            key: _keyForm,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 251,
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
//                      SizedBox(height: 20,),
                      TextFormField(
                        validator: (valor) {
                          if (valor!.isEmpty) {
                            return 'numero vacio';
                          }

                          if (valor != '5') {
                            return 'numero invalido';
                          }

                          return null;
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
//                            icon: Icon(Icons.calendar_view_day),
                          labelText: 'Ingrese su Respuesta',
                          border: OutlineInputBorder(),
                          isDense: false,
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
//                      SizedBox(height: 20,),

                    ],
                  ),
                ),
                // 
                

              ],
            ),            


          ),  
          Container(
            width: 118,
            height: 40,
            child: RaisedButton(
              child: Text(
                'Comprobar',
                style:
                    TextStyle(color: Colors.white, fontSize: 16),
              ),
              color: Colors.blue[600],
              onPressed: () {
                if (_keyForm.currentState!.validate()) {
                  // ignore: avoid_print
                  print('Respuesta Correcta');
                  //Navigator.pushNamed(context, "chupaloCarlo");

                } else {
                  print("Ingrese una respuesta válida. ");

                  //Navigator.pushNamed(context, "chupaloCarlo");

                }
              },
            ),
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
          Image.asset('assets/imgs/matematicas/ejercicio_SR.png'),
        ],
      ),
    );
  }

  Widget explicacion1(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'Un mecánico necesita encontrar la función para formar un rodillo de 5 cm de radio, de una de las máquinas en el área del transporte de lodo.',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0,0,0,1),
                fontFamily: 'Red Hat Display',
                fontSize: 22,
                letterSpacing: -0.44,
                fontWeight: FontWeight.normal,
                height: 1.63),
          ),         
          SizedBox(height: 20,),
          //Image.asset('assets/imgs/matematicas/cilindro.png'),
          SizedBox(height:20),


          


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

  Widget botonFinal(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 17.2),
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
          //Botón Next
        ],
      ),
    );
  }  

}
