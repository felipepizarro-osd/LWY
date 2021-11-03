import 'package:first_app/screens/main_screen.dart';
import 'package:first_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "C19Software",
      home: MainScreen(),
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

        )


      ),
    );
  }
}
