import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(children: <Widget>[
          customAppBar(),
        ]),
      ),
    );
  }

  Widget customAppBar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Row(
        
        children: <Widget>[
          Image.asset(
            'assets/imgs/inicio.png',
            height: 500,
          ),
          IconButton(
            icon: SvgPicture.asset('assets/icons/perfil.svg'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
