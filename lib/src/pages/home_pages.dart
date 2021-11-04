import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/pages/perfil_usuario.dart';

class HomePages extends StatelessWidget {
  const HomePages({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.systemBackground,
      body: SizedBox(
          width: 411,
          height: 681,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/Image6.png',
                width: 400,
                height: 400,
              ),
            ],
          )),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_forward_ios),
        onPressed: () {
          Navigator.pushNamed(context, "perfil");
        },
      ),
    );
  }
}
