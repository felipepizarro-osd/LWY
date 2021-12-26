import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ejemplo_derivada extends StatelessWidget {
  const ejemplo_derivada({Key? key}) : super(key: key);

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
              SizedBox(height: 15,),
              explicacion2(context),
              explicacion3(context),        
              explicacion4(context)      ,
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
          Image.asset('assets/imgs/matematicas/ejemploderivada.png'),
        ],
      ),
    );
  }

  Widget explicacion(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Figma Flutter Generator EselestadoalquesellegaalfinaldecualquiersistemaqumicolaexpresinmatemticaquerepresentaalequilibrioqumicoseconocecomoleydeaccindemasasparacualquierreaccinWidget - TEXT
          Text(
            'Estos son ejemplos de derivada en la vida cotidiana, pero como podemos observar no son lo mismo...',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Red Hat Text',
                fontSize: 18,
                letterSpacing: 0.44,
                fontWeight: FontWeight.normal,
                height: 1.5),
          )
        ],
      ),
    );
  }

  Widget explicacion2(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // Ejemplo 1
          Text(
            'Ejemplo1',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(255, 12, 12, 1),
                fontFamily: 'Red Hat Text',
                fontSize: 20,
                letterSpacing: 0.44,
                fontWeight: FontWeight.bold,
                height: 1.55),
              
          ),
          SizedBox(height: 5),


          Text(
            'En este caso, descendemos despacio.',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Red Hat Text',
                fontSize: 18,
                letterSpacing: 0.44,
                fontWeight: FontWeight.normal,
                height: 1.55),
          ),
          SizedBox(height: 10,),
          Image.asset('assets/imgs/matematicas/der1.png'),
          SizedBox(height: 30,),

          //Ejemplo 2
          Text(
            'Ejemplo2',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(255, 12, 12, 1),
                fontFamily: 'Red Hat Text',
                fontSize: 20,
                letterSpacing: 0.44,
                fontWeight: FontWeight.bold,
                height: 1.55),
              
          ),
          SizedBox(height: 5),


          Text(
            'En el segundo caso, descendemos un poco más rápido',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Red Hat Text',
                fontSize: 18,
                letterSpacing: 0.44,
                fontWeight: FontWeight.normal,
                height: 1.55),
          ),
          SizedBox(height: 10,),
          Image.asset('assets/imgs/matematicas/der2.png'),
          SizedBox(height: 30,),

          //Ejemplo 3
                    Text(
            'Ejemplo3',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(255, 12, 12, 1),
                fontFamily: 'Red Hat Text',
                fontSize: 20,
                letterSpacing: 0.44,
                fontWeight: FontWeight.bold,
                height: 1.55),
              
          ),
          SizedBox(height: 5),


          Text(
            'En el tercero, el descenso es mucho más rápido',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Red Hat Text',
                fontSize: 18,
                letterSpacing: 0.44,
                fontWeight: FontWeight.normal,
                height: 1.55),
          ),
          SizedBox(height: 10,),
          Image.asset('assets/imgs/matematicas/der3.png'),
          SizedBox(height: 30,),//          

        ],
      ),
    );
  }  

  Widget explicacion3(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Figma Flutter Generator EselestadoalquesellegaalfinaldecualquiersistemaqumicolaexpresinmatemticaquerepresentaalequilibrioqumicoseconocecomoleydeaccindemasasparacualquierreaccinWidget - TEXT
          Text(
            'Por lo tanto como podemos observar , esos ejemplos de derivadas no son lo mismo, ya que en los tres casos descendemos, pero no al mismo ritmo. El uso de la derivada es fundamental en algunas situaciones de la vida cotidiana',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Red Hat Text',
                fontSize: 18,
                letterSpacing: 0.44,
                fontWeight: FontWeight.normal,
                height: 1.5),
          ),
        ],
      ),
    );
  }

  Widget explicacion4(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Por ejemplo:',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Red Hat Text',
                fontSize: 18,
                letterSpacing: 0.44,
                fontWeight: FontWeight.bold,
                height: 1.5),
          ),          
          Text(
            ' - La variación del espacio en función del tiempo\n - El crecimiento de una bacteria en función del tiempo\n - El desgaste de un neumático en función del tiempo\n - El beneficio de una empresa en función del tiempo...',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Red Hat Text',
                fontSize: 18,
                letterSpacing: 0.44,
                fontWeight: FontWeight.normal,
                height: 1.5),
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
