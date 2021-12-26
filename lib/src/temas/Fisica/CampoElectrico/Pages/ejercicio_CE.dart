// ignore_for_file: annotate_overrides, unnecessary_this, file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ejercicio_CE extends StatelessWidget {
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
                          ' ¿Cuál es entonces, la intensidad del campo en P?',
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

                            if (valor != '7.5*10^-2 N' &&
                                valor != '7,5*10^-2 N' &&
                                valor != '7,5*10^-2N' &&
                                valor != '7.5*10^-2N' &&
                                valor != '7.5x10^-2 N' &&
                                valor != '7.5x10^-2' &&
                                valor != '7,5*10^-2') {
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
                                Navigator.pushNamed(
                                    context, "ej2campoElectrico");
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
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            'assets/imgs/cajita.png',
            height: 60,
            width: 60,
          ),
          Text(
            'Campo Electrico',
            style: GoogleFonts.redHatDisplay(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
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
          Image.asset('assets/imgs/fisica/ejercicio_CE.png'),
        ],
      ),
    );
  }

  Widget cuerpo(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // Figma Flutter Generator EselestadoalquesellegaalfinaldecualquiersistemaqumicolaexpresinmatemticaquerepresentaalequilibrioqumicoseconocecomoleydeaccindemasasparacualquierreaccinWidget - TEXT
          Text(
            'Dada la imagen, y asumiendo que se coloca una carga q = 2*10^-7 C, y en ella actúa una fuerza F= 5*10^-2N\n',
            style: GoogleFonts.redHatDisplay(
              fontSize: 18,
              letterSpacing: 1.2,
            ),
          ),
          Image.asset(
            "assets/imgs/image34.png",
            width: 450,
            height: 250,
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
