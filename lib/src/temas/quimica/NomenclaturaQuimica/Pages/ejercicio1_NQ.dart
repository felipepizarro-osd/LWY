// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, avoid_print, file_names, dead_code

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ejercicio_NQ extends StatelessWidget {
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
                  customAppBar(
                    context,
                  ),
                  barra(
                    context,
                  ),
                  explicacion1(context),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          validator: (valor) {
                            if (valor!.isEmpty) {
                              return 'numero vacio';
                            }

                            if (valor != 'monoxido de magnesio' && valor != 'monóxido de magnesio' && valor != 'MONOXIDO DE MAGNESIO') {
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
                        SizedBox(
                          height: 30,
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
                                print('Correcto');
                                Navigator.pushNamed(context, "correcto_NQ");
                              } else {
                                print("Ha ocurrido un error");
                                Navigator.pushNamed(context, "incorrecto_NQ");
                              }
                            },
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
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

  Widget barra(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset('assets/imgs/nomenclatura_ej.png'),
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

          SizedBox(
            height: 20,
          ),
          Image.asset('assets/imgs/nom3.png'),
          SizedBox(height: 20),
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
            'assets/imgs/nomenclatura.png',
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
                  Navigator.pushNamed(context, "back1_NQ");
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
