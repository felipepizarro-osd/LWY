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
      initialRoute: "home",
      routes: {
        "home": (_) => const HomePages(),
        "perfil": (_) => const PerfillUser(),
        "setting": (_) => const opciones(),
      },
    );
  }
}
