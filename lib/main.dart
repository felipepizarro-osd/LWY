import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/pages/opciones.dart';
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
        "GO": (_) => MainScreen(),
        "perfil": (_) => PerfillUser(),
        "home": (_) => MainScreen(),
        "setting": (_) => const opciones(),
      },
      theme: ThemeData(
          primaryColor: Colors.grey[300],
          accentColor: Colors.green[300],
          highlightColor: Colors.yellow,
          textTheme: TextTheme(
            //Supuestos textos para reutilizar
            headline1: TextStyle(
              fontSize: 36.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue[600],
            ), //head1

            headline2: TextStyle(
              fontSize: 36.0,
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
            ),
            //head2
          )), //theme
    );
  }
}
