import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/temas/quimica/EquilibrioQuimico/Pages/explicacion1_EQ.dart';

import 'src/pages/HomeInformatica.dart';
import 'src/pages/home_fisica.dart';
import 'src/pages/home_matematica.dart';
import 'src/pages/home_quimica.dart';
import 'src/pages/pages.dart';
import 'src/temas/quimica/EquilibrioQuimico/Pages/home_balance.dart';
import 'src/temas/quimica/LeyCharles/Pages/home_leyCharles.dart';
import 'src/temas/quimica/NomenclaturaQuimica/Pages/home_nomenclatura.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Cursos Ing",
      initialRoute: "GO",
      //Ruta inicial GO, la cambiaré por equilibrio quimico pa ir probando
      routes: {
        "GO": (_) => EquilibrioQuimico(), //Ruta inicial GO, la cambiaré por equilibrio quimico pa ir probando 
        //HomePages(), ruta inicial
        "perfil": (_) => const PerfillUser(),
        "home": (_) => MainScreen(),
        "setting": (_) => const opciones(),
        "fisica": (_) => const FisicaHome(),
        "informatica": (_) => const HomePageInformatica(),
        "quimica": (_) => const HomePageQuimica(),
        "matematica": (_) => const HomeMatematica(),
        "equilibrioQuimico" : (_) => const EquilibrioQuimico(),
        "nomenclatura" : (_) => const homeNomenclatura(),
        "leyCharles" : (_) => const homeLeyCharles(),
        "explBalanceQuimico" : (_) => const Explicacion1_EQ(),
        
      },
      theme: ThemeData(
          primaryColor: Colors.grey[300],
          highlightColor: Colors.yellow,
          textTheme: TextTheme(
            //Supuestos textos para reutilizar
            headline1: TextStyle(
              fontSize: 36.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue[600],
            ), //head1

            headline2: const TextStyle(
              fontSize: 36.0,
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
            ),
            //head2
          )), //theme
    );
  }
}
