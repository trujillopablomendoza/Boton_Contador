//Importacion de libreria material
import 'package:flutter/material.dart';

//Crea la clase y el estado a cambiar
class BotonFlotante extends StatefulWidget {
  const BotonFlotante({super.key});
  _BotonFlotante createState() => _BotonFlotante();
}

//Crear los widgets a mostrar
class _BotonFlotante extends State<BotonFlotante> {
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Boton Contador'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Contador clicks",
            style: TextStyle(fontSize: 20),
          ),
          Text('$contador')
        ],
      )),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () => setState(() => contador++)),
          FloatingActionButton(
              child: Icon(Icons.refresh),
              onPressed: () => setState(() => contador = 0)),
          FloatingActionButton(
              child: Icon(Icons.remove),
              onPressed: () => setState(() => contador--)),
        ],
      ),
    );
  }
}
