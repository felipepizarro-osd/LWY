import 'package:flutter/material.dart';
import './Question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void responder() {
    setState(() {
      questionIndex = questionIndex + 1;
    });

    print(questionIndex);
    //print("respuesta elegida !");
  }

  Widget build(BuildContext context) {
    var question = ['Que quieres aprender ?', 'Cual es tu area favorita ?'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Proyecto app'),
        ),
        body: Column(
          children: <Widget>[
            Question(
              question[questionIndex],
            ),
            RaisedButton(
              child: Text('Respuesta 1'),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text('Respuesta 2'),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text('Respuesta 3'),
              onPressed: responder,
            ),
          ],
        ),
      ),
    );
  }
}
