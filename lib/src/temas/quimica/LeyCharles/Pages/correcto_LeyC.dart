import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class correcto_leyC extends StatelessWidget {
  const correcto_leyC ({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          customAppBar(context),
          respuesta(context),
          foto(context),
          SizedBox(height: 110,),
          botonFinal(context),
          


        ],
      ),
    );
  }

  Widget customAppBar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17.2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            'assets/imgs/leyCharles.png',
            height: 56,
            width: 212,            
          ),
          IconButton(
            iconSize: 43,
            icon: Image.network(
                'https://lh3.googleusercontent.com/-TG6ztsHV91s/YYIQpvM2P6I/AAAAAAAAAA4/_Yk-veTi2FsT0lysAtNjwnhX3BaBkCs3QCLcBGAsYHQ/Userpic.png'),
            onPressed: () {
              Navigator.pushNamed(context, "perfil");
            },
          ),
        ],
      ),
    );
  }

  Widget respuesta(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0,  vertical: 17.2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/imgs/correcto_check.png',
            height: 50,
            width: 50,
          ),

          Text(
            'Respuesta correcta',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(1, 137, 15, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 30,
                letterSpacing: -0.44,
                fontWeight: FontWeight.bold,
                height: 1.2),
          ),         

        ],
      ),
    );
  }

  Widget foto(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset('assets/imgs/correctoGif.gif',height: 282, width: 350,),
        
        ],
      ),
    );
  }

  Widget botonFinal(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          //Boton Back
          Row(
            children: <Widget>[
              TextButton(
                child: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pushNamed(context, "back1_LC");
                },
              ),
              Text(
                'Prev',
                style: GoogleFonts.arbutusSlab(
                  fontSize: 20,
                ),
              ),
            ],
          ),
          //Botón Next

        ],
      ),
    );
  }
 
}

