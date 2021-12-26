import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ejemplo_2derivada extends StatelessWidget {
  const ejemplo_2derivada({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          customAppBar(context),
          this.listaVertical(context),
          
        ],
      ),
    );
  }

  Widget customAppBar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            'assets/imgs/matematicas/2derivada.png',
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

  Widget listaVertical(context) {
    return Column(
//      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,

      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 100, vertical: 0),
        ),
        Container(
          height: 560,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              barra(context),
              explicacion(context),
              explicacion2(context),
              SizedBox(height: 10,),
              botonFinal(context),
            ],
          ),
        ),
      ],
    );
  }  

  Widget barra(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset('assets/imgs/matematicas/ejemplo2derivada.png'),
        ],
      ),
    );
  }

  Widget explicacion(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

          Text(
            'Imaginemos que una montaña rusa está representada por la función:',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0,0, 0, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 20,
                letterSpacing: -0.44,
                fontWeight: FontWeight.normal,
                height: 1.5),
          ),          
          SizedBox(height: 10,),
          Image.asset(
            'assets/imgs/matematicas/seg1.png',
          ),

          SizedBox(height: 10,),

          Text(
            'Y debemos determinar si los extremos de la montaña rusa (f(x)) son máximos o mínimos.',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0,0, 0, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 20,
                letterSpacing: -0.44,
                fontWeight: FontWeight.normal,
                height: 1.5),
          ),     
          Text(
            '¿Cómo se calcula?',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(43, 217, 0, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 20,
                letterSpacing: -0.44,
                fontWeight: FontWeight.normal,
                height: 1.5),
          ),
          SizedBox(height: 10,),     

        ],
      ),
    );
  }

  Widget explicacion2(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[ 
          Text(
            ' · Calculamos la primera derivada.',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0,0, 0, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 20,
                letterSpacing: -0.44,
                fontWeight: FontWeight.normal,
                height: 1.5),
          ),          
          SizedBox(height: 10),
          foto2(context),     
          SizedBox(height: 5),

          Text(
            ' · Calculamos los puntos críticos.',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0,0, 0, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 20,
                letterSpacing: -0.44,
                fontWeight: FontWeight.normal,
                height: 1.5),
          ),    
          foto3(context),     
          SizedBox(height: 5), 
          Text(
            ' · Calculamos la segunda derivada.',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0,0, 0, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 20,
                letterSpacing: -0.44,
                fontWeight: FontWeight.normal,
                height: 1.5),
          ),       
          foto4(context)                                ,
          SizedBox(height: 15,),
          Text(
            ' · Evaluamos la segunda derivada en los puntos críticos',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0,0, 0, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 20,
                letterSpacing: -0.44,
                fontWeight: FontWeight.normal,
                height: 1.5),
          ),       
          foto5(context),
          SizedBox(height: 25,),
          Text(
            'Por lo tanto, la función de la montaña rusa tiene un máximo local en x = 0 y un mínimo local en x = 2.',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0,0, 0, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 20,
                letterSpacing: -0.44,
                fontWeight: FontWeight.normal,
                height: 1.5),
          ),     
          SizedBox(height: 15,)  ,
          Text(
            'Representación gráfica: ',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(255, 12, 12, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 20,
                letterSpacing: -0.44,
                fontWeight: FontWeight.normal,
                height: 1.5),
          ),
          foto6(context),

        ],
      ),
    );
  }  

  Widget foto2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 70, vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          //SizedBox(height: 25,),
          Image.asset(
            'assets/imgs/matematicas/seg2.png',
          ),

        ],
      ),
    );
  }

    Widget foto3(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 70, vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          //SizedBox(height: 25,),
          Image.asset(
            'assets/imgs/matematicas/seg3.png',
          ),

        ],
      ),
    );
  }

    Widget foto4(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 70, vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          //SizedBox(height: 25,),
          Image.asset(
            'assets/imgs/matematicas/seg4.png',
          ),

        ],
      ),
    );
  }

    Widget foto5(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 70, vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          //SizedBox(height: 25,),
          Image.asset(
            'assets/imgs/matematicas/seg5.png',
          ),

        ],
      ),
    );
  }

    Widget foto6(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 00, vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          //SizedBox(height: 25,),
          Image.asset(
            'assets/imgs/matematicas/seg6.png',
          ),

        ],
      ),
    );
  } 

  Widget botonFinal(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17.2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          //Boton Back
          Row(
            children: <Widget>[
              TextButton(
                child: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pushNamed(context, "back1_2derivada");
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

        ],
      ),
    );
  }
}
