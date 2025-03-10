import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Diana Leyva Mat: 1071'),
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: <Widget>[
            // Separador 1
            ListTile(
              title: const Text('Grupo de colores 1',
                  style: TextStyle(fontWeight: FontWeight.bold)), // Icono de paleta
            ),
            // Grupo de 3 botones
            buildColorCard(Colors.pinkAccent, 'rosa', Icons.favorite),
            buildColorCard(Colors.blue, 'azul', Icons.water_drop),
            buildColorCard(Colors.green, 'verde', Icons.nature),
            // Separador 2
            ListTile(
              title: const Text('Grupo de colores 2',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            // Grupo de 2 botones
            buildColorCard(Colors.red, 'rojo', Icons.warning),
            buildColorCard(Colors.orange, 'naranja', Icons.lightbulb),
            ListTile(
              title: const Text('Grupo de colores 3',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            buildColorCard(Colors.brown, 'cafe', Icons.coffee),
            buildColorCard(Colors.yellow, 'amarillo', Icons.sunny),
          ],
        ),
      ),
    );
  }

  Widget buildColorCard(Color color, String text, IconData icon) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: InkWell(
        onTap: () {
          print('Tocado: $text');
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                backgroundColor: color,
                radius: 15,
                child: Icon(
                  icon,
                  size: 18,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Text(text),
              ),
              const Icon(Icons.chevron_right), // Flecha al final
            ],
          ),
        ),
      ),
    );
  }
}