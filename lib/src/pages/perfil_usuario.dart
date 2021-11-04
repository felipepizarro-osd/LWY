import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_pages.dart';

class PerfillUser extends StatelessWidget {
  const PerfillUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 411,
        height: 681,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 20),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                const SizedBox(width: 5),
                TextButton(
                  child: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pushNamed(context, "home");
                  },
                ),
                const Text(
                  'Perfil',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Helvetica',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 100),
            Image.asset(
              'assets/imgs/Userpic.png',
              width: 200,
              height: 200,
            ),
            Image.asset(
              "assets/imgs/Lapiz1.png",
              alignment: Alignment.center,
              width: 40,
              height: 40,
            ),
            const SizedBox(height: 1),
            const Text(
              "Editar",
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal),
            ),
            const SizedBox(height: 3),
            const Text(
              "C19 guy",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Arial',
              ),
            ),
            const SizedBox(height: 3),
            Text(
              "Student",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.values[2],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        children: <Widget>[
          const SizedBox(width: 40),
          FloatingActionButton(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            heroTag: "btn1",
            child: const Icon(
              Icons.update_rounded,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              Navigator.pushNamed(context, "home");
            },
          ),
          const Expanded(child: SizedBox()),
          FloatingActionButton(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            heroTag: "btn2",
            child: const Icon(
              Icons.settings,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              Navigator.pushNamed(context, "setting");
            },
          ),
        ],
      ),
    );
  }
}
