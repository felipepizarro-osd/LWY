import 'package:flutter/material.dart';

import 'src/pages/HomeInformatica.dart';
import 'src/pages/home_fisica.dart';
import 'src/pages/home_matematica.dart';
import 'src/pages/home_quimica.dart';
import 'src/pages/pages.dart';

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
      routes: {
        "GO": (_) => HomePages(),
        "perfil": (_) => const PerfillUser(),
        "home": (_) => MainScreen(),
        "setting": (_) => const opciones(),
        "fisica": (_) => const FisicaHome(),
        "informatica": (_) => const HomePageInformatica(),
        "quimica": (_) => const HomePageQuimica(),
        "matematica": (_) => const HomeMatematica(),
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
