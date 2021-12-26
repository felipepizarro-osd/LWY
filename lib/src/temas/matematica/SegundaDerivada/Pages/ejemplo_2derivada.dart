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
          SizedBox(height: 10,),           
          
                 

          Image.asset(
            'assets/imgs/matematicas/seg2.png',
          ),

          SizedBox(height: 5),

          Text(
            '- Encontramos sus intervalos',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0,0, 0, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 20,
                letterSpacing: -0.44,
                fontWeight: FontWeight.normal,
                height: 1.5),
          ),
          SizedBox(height: 5,),             

          Image.asset(
            'assets/imgs/matematicas/seg3.png',
          ),

          SizedBox(height: 5),

          Text(
            '- Los intervalos van a ser [0,4]',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0,0, 0, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 18,
                letterSpacing: -0.44,
                fontWeight: FontWeight.bold,
                height: 2),
          ),
          SizedBox(height: 5,),            

          Text(
            '- Utilizaremos el método de los discos ',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0,0, 0, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 18,
                letterSpacing: -0.44,
                fontWeight: FontWeight.bold,
                height: 2),
          ),
          SizedBox(height: 15,),       

          Text(
            'Fórmula del Método del Disco ',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(255, 12, 12, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 18,
                letterSpacing: -0.44,
                fontWeight: FontWeight.bold,
                height: 2),
          ),
          SizedBox(height: 10,),                 

          Image.asset(
            'assets/imgs/matematicas/sr4.png',
          ),

          Text(
            '- Lo hacemos girar por el eje de las y, y usamos rectángulos horizontales.',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0,0, 0, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 18,
                letterSpacing: -0.44,
                fontWeight: FontWeight.bold,
                height: 2),
          ),
          SizedBox(height: 10,),   

          Image.asset(
            'assets/imgs/matematicas/sr5.png',
          ),

          Text(
            'Por lo tanto, el vólumen del sartén de cocina sería de 128/3 π',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0,0, 0, 1),
                fontFamily: 'Red Hat Display',
                fontSize: 18,
                letterSpacing: -0.44,
                fontWeight: FontWeight.bold,
                height: 2),
          ),

        ],
      ),
    );
  }

  Widget barra2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          //SizedBox(height: 25,),
          Image.asset(
            'assets/imgs/matematicas/derivada1.png',
          ),

        ],
      ),
    );
  }

  Widget explicacion2(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Figma Flutter Generator EselestadoalquesellegaalfinaldecualquiersistemaqumicolaexpresinmatemticaquerepresentaalequilibrioqumicoseconocecomoleydeaccindemasasparacualquierreaccinWidget - TEXT
          Text(
            'La derivada de una función es una medida de la rapidez con la que cambia el valor de dicha función según cambie el valor de su variable independiente, es decir, la derivada nos indica el ritmo con el que dicha función crece,decrece o permanece constante cuando se producen cambios en la variable independiente.',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Red Hat Text',
                fontSize: 18,
                letterSpacing: 0.44,
                fontWeight: FontWeight.normal,
                height: 1.55),
          )
        ],
      ),
    );
  }  

  Widget ejemplo (BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Stack(

          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            Container(
            width: 173,
            height: 57,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              //color de fondo
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 10),
                Container(
                  width: 158,
                  height: 7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    //color de la franja
                    color: Color.fromRGBO(238, 153, 68, 1),
                  ),
                ),
                Row(
                  children: <Widget>[
                    const SizedBox(height: 5, width: 15),
                    Text(
                      '    Ejemplos',
                      style: GoogleFonts.redHatDisplay(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromRGBO(25, 25, 29, 1)),
                          
                    ),
                  ],
                ),
                const SizedBox(height: 2),

                ],
              ),
            ),
          MaterialButton(
            elevation: 10,
            minWidth: 173,
            height: 57,
            onPressed: () {
              Navigator.pushNamed(context, "ejemDerivada");
            },
          ),
            
          ],
          
        ),
        SizedBox(height: 20),




      ],
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
