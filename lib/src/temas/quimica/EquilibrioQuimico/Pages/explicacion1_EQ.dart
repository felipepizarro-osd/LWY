import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/temas/quimica/EquilibrioQuimico/Componentes/barraExplicacion.dart';

class Explicacion1_EQ extends StatelessWidget {
  const Explicacion1_EQ({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          customAppBar(context),
          SizedBox(
            height: 40,
          ),
          explicacionBarra_balance(),
          SizedBox(
            height: 20,
          ),
          //Ejemplos_balance(),
          SizedBox(height: 20),
          //Ejercicios_balance(),
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
}
