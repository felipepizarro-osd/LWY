import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/temas/quimica/EquilibrioQuimico/Pages/explicacion1_EQ.dart';
import 'package:flutter_application_2/src/temas/quimica/LeyCharles/Pages/explicacion1_LC.dart';
import 'src/pages/pages.dart';
import 'src/pages/home_fisica.dart';
import 'src/pages/home_matematica.dart';
import 'src/pages/home_quimica.dart';
import 'src/temas/quimica/NomenclaturaQuimica/Pages/ejemplo1_NQ.dart';
import 'src/temas/quimica/NomenclaturaQuimica/Pages/ejercicio1_NQ.dart';
import 'src/temas/quimica/NomenclaturaQuimica/Pages/explicacion5_NQ.dart';
import 'src/temas/quimica/NomenclaturaQuimica/Pages/explicacion6_NQ.dart';

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
        "GO": (_) =>
            HomePages(), //Ruta inicial GO, la cambiaré por equilibrio quimico pa ir probando
        //HomePages(), ruta inicial
        "perfil": (_) => const PerfillUser(),
        "home": (_) => MainScreen(),
        "setting": (_) => const opciones(),
        "fisica": (_) => const FisicaHome(),
        "informatica": (_) => const HomePageInformatica(),
        "quimica": (_) => const HomePageQuimica(),
        "matematica": (_) => const HomeMatematica(),

        //QUIMICA________________________________________________________
        "back_EQ": (_) => const HomePageQuimica(),
        "equilibrioQuimico": (_) => const EquilibrioQuimico(),
        "nomenclatura": (_) => const homeNomenclatura(),
        "leyCharles": (_) => const homeLeyCharles(),

        //Nomeclatura quimica
        "explicacion1_NQ": (_) => const Explicacion1_NQ(),
        "explicacion2_NQ": (_) => const Explicacion2_NQ(),
        "explicacion3_NQ": (_) => const Explicacion3_NQ(),
        "explicacion4_NQ": (_) => const Explicacion4_NQ(),
        "explicacion5_NQ": (_) => const Explicacion5_NQ(),
        "explicacion6_NQ": (_) => const Explicacion6_NQ(),
        "ejemplo1_NQ": (_) => const Ejemplo1_NQ(),
        "ejercicio1_NQ": (_) => const Ejercicio1_NQ(),
        "homeNQ": (_) => const homeNomenclatura(),

        //Equilibrio quimico
        "explBalanceQuimico": (_) => const Explicacion1_EQ(),

        "ejemBalanceQuimico": (_) => const Ejemplo_EQ(),

        "ejerciciosBalanceQuimico": (_) => const ejercicio_EQ(),

        "next1_EQ": (_) => Explicacion2_EQ(),
        "next2_EQ": (_) => Explicacion3_EQ(),
        "next3_EQ": (_) => Explicacion4_EQ(),
        "next4_EQ": (_) => Explicacion5_EQ(),
        "next5_EQ": (_) => Explicacion6_EQ(),

        "back1_EQ": (_) => const EquilibrioQuimico(),
        "back2_EQ": (_) => const Explicacion1_EQ(),
        "back3_EQ": (_) => const Explicacion2_EQ(),
        "back4_EQ": (_) => const Explicacion3_EQ(),
        "back5_EQ": (_) => const Explicacion4_EQ(),
        "back6_EQ": (_) => const EquilibrioQuimico(),
        "back7_EQ": (_) => const EquilibrioQuimico(),
        "back8_EQ": (_) => const EquilibrioQuimico(),

        //Ley de Charles
        "explleyCharles": (_) => const Explicacion1_LC(),

        "ejemleyCharles": (_) => const Ejemplo_LC(),

        "ejerciciosleyCharles": (_) => const Ejercicio_LC(),

        "next1_LC": (_) => Explicacion2_LC(),

        "back1_LC": (_) => const homeLeyCharles(),
        "back2_LC": (_) => const homeLeyCharles(),
        "back3_LC": (_) => const homeLeyCharles(),
        "back4_LC": (_) => const homeLeyCharles(),
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
        ),
      ), //theme
    );
  }
}
