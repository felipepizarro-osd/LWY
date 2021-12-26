// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Ejercicio1_LN extends StatelessWidget {
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
                  cuerpo(context),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '¿Cual es el valor de i?',
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.redHatDisplay(
                            fontSize: 22,
                            // fontWeight: FontWeight.bold,
                            letterSpacing: 1.2,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          validator: (valor) {
                            if (valor!.isEmpty) {
                              return 'numero vacio';
                            }

                            if (valor != '4' &&
                                valor != '4ma' &&
                                valor != '4 ma' &&
                                valor != '4mA' &&
                                valor != '4 mA') {
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
                                Navigator.pushNamed(context, "CorrectoFisica");
                              } else {
                                print("Ha ocurrido un error");
                                Navigator.pushNamed(context, "Ejercicio2_LN");
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

  Widget customAppBar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17.2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            'assets/imgs/leydenodos.png',
            height: 56,
            width: 230,
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
          Image.asset('assets/imgs/ejercicio_LN.png'),
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
                  Navigator.pushNamed(context, "homenodos");
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

  Widget cuerpo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17.2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '    ¿Cuánto vale I?',
            style: GoogleFonts.redHatDisplay(
              fontSize: 42,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.2,
            ),
          ),
          Image.asset(
            "assets/imgs/image53.png",
            width: 500,
            height: 170,
          ),
        ],
      ),
    );
  }
}
