import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.grey[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset('assets/imgs/c19.png',
            height: 500,),
            IconButton(
              iconSize: 150,
              icon: SvgPicture.asset('assets/icons/go.svg'),
              
              onPressed: () {},
              ),
          ], //Widget
        ),
      ), //Container
    ); // Scaffold
  }
}
