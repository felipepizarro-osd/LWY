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
                  'volver',
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
              'assets/Userpic.png',
              width: 200,
              height: 200,
            ),
            Image.asset(
              "assets/Lapiz1.png",
              alignment: Alignment.center,
              width: 40,
              height: 40,
            ),
            const SizedBox(height: 1),
            Text(
              'Editar',
              style: GoogleFonts.caveat(
                fontSize: 25,
              ),
            ),
            const SizedBox(height: 3),
            Text(
              'C19 Guy',
              style: GoogleFonts.caveat(
                fontSize: 25,
              ),
            ),
            const SizedBox(height: 3),
            Text(
              'Student',
              style: GoogleFonts.caveat(
                fontSize: 25,
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
