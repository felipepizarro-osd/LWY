import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/temas/Fisica/CampoElectrico/Pages/ejemplo_CE.dart';
import 'package:flutter_application_2/src/temas/Fisica/CampoElectrico/Pages/explicacion_CE.dart';
import 'package:flutter_application_2/src/temas/Fisica/CampoElectrico/Pages/home_campoE.dart';
import 'package:flutter_application_2/src/temas/Fisica/LeyCoulomb/Pages/home_leyCoulomb.dart';
import 'package:flutter_application_2/src/temas/Fisica/LeyesKirchoff/Pages/home_leyKirchoff.dart';
import 'package:flutter_application_2/src/temas/Informatica/ArbolAVL/Pages/explicacion1_AVL.dart';
import 'package:flutter_application_2/src/temas/matematica/SegundaDerivada/Pages/ejemplo_2derivada.dart';
import 'package:flutter_application_2/src/temas/matematica/SegundaDerivada/Pages/home_derivada2.dart';
import 'package:flutter_application_2/src/temas/matematica/SolidoRevolucion/Pages/ejercicio1_SR.dart';
import 'package:flutter_application_2/src/temas/matematica/SolidoRevolucion/Pages/explicacion1_SR.dart';
import 'package:flutter_application_2/src/temas/matematica/SolidoRevolucion/Pages/home_solido.dart';
import 'package:flutter_application_2/src/temas/matematica/SumasRiemann/Pages/home_sumas.dart';
import 'package:flutter_application_2/src/temas/quimica/EquilibrioQuimico/Pages/explicacion1_EQ.dart';
import 'package:flutter_application_2/src/temas/quimica/LeyCharles/Pages/explicacion1_LC.dart';
import 'src/pages/pages.dart';
import 'src/pages/home_fisica.dart';
import 'src/pages/home_matematica.dart';
import 'src/pages/home_quimica.dart';
import 'src/pages/practica.dart';
import 'src/pages/practica2.dart';
import 'src/temas/Fisica/CampoElectrico/Pages/aplicacion_CE.dart';
import 'src/temas/Fisica/CampoElectrico/Pages/ejercicio_CE.dart';
import 'src/temas/Fisica/LeyCoulomb/Pages/Aplicacion1_LC.dart';
import 'src/temas/Fisica/LeyCoulomb/Pages/Ejemplo1_LC.dart';
import 'src/temas/Fisica/LeyCoulomb/Pages/Ejercicio1_LC.dart';
import 'src/temas/Fisica/LeyCoulomb/Pages/Explicacion1_LC.dart';
import 'src/temas/Fisica/LeyesKirchoff/Pages/Aplicacion1_LK.dart';
import 'src/temas/Fisica/LeyesKirchoff/Pages/LeyNodos/Ejemplo1_LN.dart';
import 'src/temas/Fisica/LeyesKirchoff/Pages/LeyNodos/Ejercicio1_LN.dart';
import 'src/temas/Fisica/LeyesKirchoff/Pages/LeyNodos/Explicacion1_LN.dart';
import 'src/temas/Fisica/LeyesKirchoff/Pages/LeyNodos/componentes/ejercicios.dart';
import 'src/temas/Fisica/LeyesKirchoff/Pages/LeyNodos/homenodos.dart';
import 'src/temas/Fisica/LeyesKirchoff/Pages/LeyTensiones/Ejemplo1_LT.dart';
import 'src/temas/Fisica/LeyesKirchoff/Pages/LeyTensiones/Ejercicio1_LT.dart';
import 'src/temas/Fisica/LeyesKirchoff/Pages/LeyTensiones/Ejercicio2_LT.dart';
import 'src/temas/Fisica/LeyesKirchoff/Pages/LeyTensiones/Explicacion1_LT.dart';
import 'src/temas/Fisica/LeyesKirchoff/Pages/LeyTensiones/home_lt.dart';
import 'src/temas/matematica/SegundaDerivada/Pages/ejemplo_Derivada.dart';
import 'src/temas/matematica/SegundaDerivada/Pages/ejercicio_2derivada.dart';
import 'src/temas/matematica/SegundaDerivada/Pages/explicacion1_2derivada.dart';
import 'src/temas/matematica/SegundaDerivada/Pages/explicacion2_2derivada.dart';
import 'src/temas/matematica/SolidoRevolucion/Pages/correcto_SR.dart';
import 'src/temas/matematica/SolidoRevolucion/Pages/ejemplo2_SR.dart';
import 'src/temas/matematica/SolidoRevolucion/Pages/ejemplo_SR.dart';
import 'src/temas/matematica/SolidoRevolucion/Pages/explicacion2.2_SR.dart';
import 'src/temas/matematica/SolidoRevolucion/Pages/explicacion2_SR.dart';
import 'src/temas/matematica/SolidoRevolucion/Pages/incorrecto_SR.dart';
import 'src/temas/matematica/SumasRiemann/Pages/correcto_Sumas.dart';
import 'src/temas/matematica/SumasRiemann/Pages/ejemplo_sumas.dart';
import 'src/temas/matematica/SumasRiemann/Pages/explicacion1_sumas.dart';
import 'src/temas/matematica/SumasRiemann/Pages/explicacion2_sumas.dart';
import 'src/temas/matematica/SumasRiemann/Pages/incorrecto_Sumas.dart';
import 'src/temas/quimica/NomenclaturaQuimica/Pages/ejemplo1_NQ.dart';
import 'src/temas/quimica/NomenclaturaQuimica/Pages/ejercicio1_NQ.dart';
import 'src/temas/quimica/NomenclaturaQuimica/Pages/explicacion5_NQ.dart';
import 'src/temas/quimica/NomenclaturaQuimica/Pages/explicacion6_NQ.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Cursos Ing",
      initialRoute: "GO",
      //Ruta inicial GO, la cambiaré por equilibrio quimico pa ir probando
      routes: {
        "GO": (_) =>
            HomePages(), //Ruta inicial GO, la cambiaré por equilibrio quimico pa ir probando
        //HomePages(), ruta inicial
        "perfil": (_) => const PerfillUser(),
        "home": (_) => MainScreen(),
        "setting": (_) => const opciones(),
        "fisica": (_) => const FisicaHome(),
        "informatica": (_) => const HomePageInformatica(),
        "quimica": (_) => const HomePageQuimica(),
        "matematica": (_) => const HomeMatematica(),

        //INFORMATICA________________________________________________________
        "back_informatica": (_) => const HomeMatematica(),
        "solidoR": (_) => home_solido(),
        "sumas": (_) => home_sumas(),
        "derivada2": (_) => home_segundaDerivada(),
        //Arbol AVL
        "arbolAVL": (_) => Explicacion1_AVL(),

        //Listas
        //Bubble Sort

        //fin de INFORMATICA________________________________________________________

        //MATEMATICAS________________________________________________________
        "back_SR": (_) => const HomeMatematica(),
        "solidoR": (_) => home_solido(),
        "sumas": (_) => home_sumas(),
        "derivada2": (_) => home_segundaDerivada(),

        //Solido de Revolucion
        "explSolidoRevolucion": (_) => const Explicacion1_SR(),
        "ejemSolidoRevolucion": (_) => const Ejemplo_SR(),
        "ejSolidoRevolucion": (_) => ejercicio_SR(),
        "back1_SR": (_) => const home_solido(),
        "next1_SR": (_) => const Explicacion2_SR(),
        "explicacion_SR": (_) => const Ejemplo2_SR(),
        "back2_SR": (_) => const home_solido(),
        "vidaCotidiana": (_) => const Explicacion3_SR(),
        "correcto_SR": (_) => const correcto_SR(),
        "incorrecto_SR": (_) => const incorrecto_SR(),

        //Sumas de Riemann

        "explSumasRiemann": (_) => Explicacion1_sumas(),
        "next1_sumas": (_) => Explicacion2_sumas(),
        "back1_sumas": (_) => home_sumas(),
        "ejemSumasRiemann": (_) => Ejemplo_sumas(),
        "correcto_sumas": (_) => const correcto_sumas(),
        "incorrecto_sumas": (_) => const incorrecto_sumas(),

        //Criterio de la segunda derivada

        "explsegundaDerivada": (_) => Explicacion1_2derivada(),
        "next1_2derivada": (_) => Explicacion2_2derivada(),
        "back1_2derivada": (_) => home_segundaDerivada(),
        "ejemDerivada": (_) => ejemplo_derivada(),

        "ejemsegundaDerivada" : (_) => ejemplo_2derivada(),

        "ejsegundaDerivada": (_) => ejercicio_2derivada(),

        //fin de MATEMATICAS________________________________________________________

        //FISICA________________________________________________________
        "back_fisica": (_) => const FisicaHome(),
        "campoE": (_) => home_campoElectrico(),
        "leyKirchoff": (_) => home_leyKirchoff(),

        "leyCoulomb": (_) => home_leyCoulomb(),
        //kirchooff
        "leynodos": (_) => const EjerciciosLN(),
        "homeLK": (_) => const home_leyKirchoff(),
        "homenodos": (_) => const homeleynodos(),
        "Aplicacion1_LK": (_) => const Aplicacion1_LK(),
        //nodos
        "Explicacion1_LN": (_) => const Explicacion1_LN(),
        "Ejemplo1_LN": (_) => const Ejemplo1_LN(),
        "Ejercicio1_LN": (_) => const Ejercicio1_LN(),
        //ley de las tensiones
        "hometensiones": (_) => const Home_LT(),
        "Explicacion1_LT": (_) => const Explicacion1_LT(),
        "Ejemplo1_LT": (_) => const Ejemplo1_LT(),
        "Ejercicio1_LT": (_) => const Ejercicio1_LT(),
        "Ejercicio2_LT": (_) => const Ejercicio2_LT(),
        //ley de coulomb
        "homeLC": (_) => const home_leyCoulomb(),
        "Aplicacion1_LCo": (_) => const Aplicacion1_LCo(),
        "Ejercicio1_LCo": (_) => const Ejercicio1_LCo(),
        "Ejemplo1_LCo": (_) => const Ejemplo1_LCo(),
        "Explicacion1_LCo": (_) => const Explicacion1_LCo(),

        //"explicacion1_NQ": (_) => const Explicacion1_NQ(),

        //Ley de Coulomb
        // "Ejercicio1_LC": (_) => const Ejercicio1_LC(),
        //Campo Electrico
        "explcampoElectrico": (_) => const Explicacion_CE(),
        "ejemcampoElectrico": (_) => const Ejemplo_CE(),
        "ejcampoElectrico": (_) => const ejercicio_CE(),
        "apcampoElectrico": (_) => const aplicacion_CE(),

        "back_CE": (_) => const home_campoElectrico(),

        "ejemplo_CE": (_) => const Ejemplo1_NQ(),
        "ejercicio_CE": (_) => const Ejercicio1_NQ(),

        //fin de FISICA________________________________________________________

        //QUIMICA________________________________________________________
        "back_EQ": (_) => const HomePageQuimica(),
        "equilibrioQuimico": (_) => const EquilibrioQuimico(),
        "nomenclatura": (_) => const homeNomenclatura(),
        "leyCharles": (_) => const homeLeyCharles(),

        //Nomeclatura quimica
        "explicacion1_NQ": (_) => const Explicacion1_NQ(),
        "explicacion2_NQ": (_) => const Explicacion2_NQ(),
        "explicacion3_NQ": (_) => const Explicacion3_NQ(),
        "explicacion4_NQ": (_) => const Explicacion4_NQ(),
        "explicacion5_NQ": (_) => const Explicacion5_NQ(),
        "explicacion6_NQ": (_) => const Explicacion6_NQ(),

        "back1_NQ": (_) => const homeNomenclatura(),
        "back2_NQ": (_) => const homeNomenclatura(),
        "back3_NQ": (_) => const homeNomenclatura(),

        "ejemplo1_NQ": (_) => const Ejemplo1_NQ(),
        "ejercicio1_NQ": (_) => const Ejercicio1_NQ(),
        "homeNQ": (_) => const homeNomenclatura(),

        //Equilibrio quimico
        "explBalanceQuimico": (_) => const Explicacion1_EQ(),

        "ejemBalanceQuimico": (_) => const Ejemplo_EQ(),

        "ejerciciosBalanceQuimico": (_) => const ejercicio_EQ(),

        "next1_EQ": (_) => Explicacion2_EQ(),
        "next2_EQ": (_) => Explicacion3_EQ(),
        "next3_EQ": (_) => Explicacion4_EQ(),
        "next4_EQ": (_) => Explicacion5_EQ(),
        "next5_EQ": (_) => Explicacion6_EQ(),

        "back1_EQ": (_) => const EquilibrioQuimico(),
        "back2_EQ": (_) => const Explicacion1_EQ(),
        "back3_EQ": (_) => const Explicacion2_EQ(),
        "back4_EQ": (_) => const Explicacion3_EQ(),
        "back5_EQ": (_) => const Explicacion4_EQ(),
        "back6_EQ": (_) => const EquilibrioQuimico(),
        "back7_EQ": (_) => const EquilibrioQuimico(),
        "back8_EQ": (_) => const EquilibrioQuimico(),

        //Ley de Charles
        "explleyCharles": (_) => const Explicacion1_LC(),

        "ejemleyCharles": (_) => const Ejemplo_LC(),

        "ejerciciosleyCharles": (_) => const Ejercicio_LC(),

        "next1_LC": (_) => Explicacion2_LC(),

        "back1_LC": (_) => const homeLeyCharles(),
        "back2_LC": (_) => const homeLeyCharles(),
        "back3_LC": (_) => const homeLeyCharles(),
        "back4_LC": (_) => const homeLeyCharles(),

        //fin de QUIMICA________________________________________________________
      },
      theme: ThemeData(
        primaryColor: Colors.grey[300],
        highlightColor: Colors.yellow,
        textTheme: TextTheme(
          //Supuestos textos para reutilizar
          headline1: TextStyle(
            fontSize: 36.0,
            fontWeight: FontWeight.bold,
            color: Colors.blue[600],
          ), //head1

          headline2: const TextStyle(
            fontSize: 36.0,
            fontWeight: FontWeight.bold,
            color: Colors.redAccent,
          ),
          //head2
        ),
      ), //theme
    );
  }
}
