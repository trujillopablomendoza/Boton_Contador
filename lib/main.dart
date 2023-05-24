import 'package:flutter/material.dart';
import 'screens/Boton_flotante.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //quitamos debug
      debugShowCheckedModeBanner: false,
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
          primarySwatch: Colors.brown,
          accentColor: Colors.grey,
          //Configurar texto
          textTheme: TextTheme(
              bodyText2: TextStyle(color: Colors.black, fontSize: 50))),
      //  Pagina inicial
      home: BotonFlotante(),
    );
  }
}
