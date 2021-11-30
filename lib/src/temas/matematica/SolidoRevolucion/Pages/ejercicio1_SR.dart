// ignore_for_file: annotate_overrides, non_constant_identifier_names, file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/pages/practica.dart';
import 'package:google_fonts/google_fonts.dart';

class Ejercicio1_SR extends StatelessWidget {
  final _keyForm = GlobalKey<FormState>();

  Ejercicio1_SR({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
              Pregunta(context,_keyForm),
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
          Image.asset('assets/imgs/matematicas/ejercicio_SR.png'),
        ],
      ),
    );
  }

  Widget explicacion1(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 40),
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
            'Fórmula del Método del Disco:',
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
          //Botón Next
        ],
      ),
    );
  }
}

Pregunta(BuildContext context, GlobalKey<FormState> _keyForm, ) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17.2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[

          //

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
                  print('Correcto');
                  //Navigator.pushNamed(context, "chupaloCarlo");

                } else {
                  print("Ha ocurrido un error");

                  //Navigator.pushNamed(context, "chupaloCarlo");

                }
              },
            ),
          ),                  

        ],
      ),
    );  

}
