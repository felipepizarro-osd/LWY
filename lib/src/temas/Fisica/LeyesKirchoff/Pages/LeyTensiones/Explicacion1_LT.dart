// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

<<<<<<< HEAD:lib/src/temas/Fisica/LeyesKirchoff/Pages/LeyNodos/Ejercicio1_LN.dart
class Ejercicio1_LN extends StatelessWidget {
  const Ejercicio1_LN({Key? key}) : super(key: key);
=======
class Explicacion1_LT extends StatelessWidget {
  const Explicacion1_LT({Key? key}) : super(key: key);
>>>>>>> origin/mergeCarlos:lib/src/temas/Fisica/LeyesKirchoff/Pages/LeyTensiones/Explicacion1_LT.dart

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 17,
          ),
          customAppBar(context),
          barra(context),
          cuerpo(context),
          botonFinal(context),
        ],
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
<<<<<<< HEAD:lib/src/temas/Fisica/LeyesKirchoff/Pages/LeyNodos/Ejercicio1_LN.dart
            'assets/imgs/leydenodos.png',
            height: 56,
            width: 230,
=======
            'assets/imgs/cajita.png',
            height: 60,
            width: 60,
          ),
          Text(
            'Ley de las Tensiones',
            style: GoogleFonts.redHatDisplay(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
>>>>>>> origin/mergeCarlos:lib/src/temas/Fisica/LeyesKirchoff/Pages/LeyTensiones/Explicacion1_LT.dart
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

<<<<<<< HEAD:lib/src/temas/Fisica/LeyesKirchoff/Pages/LeyNodos/Ejercicio1_LN.dart
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

=======
>>>>>>> origin/mergeCarlos:lib/src/temas/Fisica/LeyesKirchoff/Pages/LeyTensiones/Explicacion1_LT.dart
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
<<<<<<< HEAD:lib/src/temas/Fisica/LeyesKirchoff/Pages/LeyNodos/Ejercicio1_LN.dart
                  Navigator.pushNamed(context, "homenodos");
=======
                  Navigator.pushNamed(context, "hometensiones");
>>>>>>> origin/mergeCarlos:lib/src/temas/Fisica/LeyesKirchoff/Pages/LeyTensiones/Explicacion1_LT.dart
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
<<<<<<< HEAD:lib/src/temas/Fisica/LeyesKirchoff/Pages/LeyNodos/Ejercicio1_LN.dart
=======
          //Botón Next
>>>>>>> origin/mergeCarlos:lib/src/temas/Fisica/LeyesKirchoff/Pages/LeyTensiones/Explicacion1_LT.dart
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
<<<<<<< HEAD:lib/src/temas/Fisica/LeyesKirchoff/Pages/LeyNodos/Ejercicio1_LN.dart
            '    ¿Cuánto vale I?',
=======
            'La Ley de voltajes de Kirchhoff dice que: La suma de todas las tensiones en un camino cerrado debe ser forzosamente igual a cero En otras palabras, en un circuito: Los incrementos en tensión es igual a las caídas de tensión. (positivos los aumentos y negativas las caídas de tensión) Aumento de tensión – suma de las caídas de tensión = 0',
>>>>>>> origin/mergeCarlos:lib/src/temas/Fisica/LeyesKirchoff/Pages/LeyTensiones/Explicacion1_LT.dart
            style: GoogleFonts.redHatDisplay(
              fontSize: 42,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.2,
            ),
          ),
          Image.asset(
<<<<<<< HEAD:lib/src/temas/Fisica/LeyesKirchoff/Pages/LeyNodos/Ejercicio1_LN.dart
            "assets/imgs/image53.png",
            width: 500,
=======
            "assets/imgs/image56.png",
            width: 490,
>>>>>>> origin/mergeCarlos:lib/src/temas/Fisica/LeyesKirchoff/Pages/LeyTensiones/Explicacion1_LT.dart
            height: 170,
          ),
        ],
      ),
    );
  }

  Widget barra(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset('assets/imgs/image57.png'),
        ],
      ),
    );
  }
}
