import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final SizedBox sizedBox = const SizedBox(height: 20.0);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mi Contenedor'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),
                color: Colors.blue,
                child: const Text(
                  'HELLO WORLD',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
              sizedBox, // Usar la variable sizedBox
              const MiNuevoWidget(),
              sizedBox, // Usar la variable sizedBox
              const MiOtroWidget(),
              sizedBox, // Usar la variable sizedBox
              const OtroWidget(),
              sizedBox, // Usar la variable sizedBox
              const Text(
                '¡Hola soy verti',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              sizedBox, // Usar la variable sizedBox
              
              ElevatedButton(
                onPressed: () {
                  print('¡Se presionó el botón!');
                },
                child: const Text('Presiona aquí'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MiNuevoWidget extends StatelessWidget {
  const MiNuevoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: const Text(
        '¡Hola desde MiNuevoWidget!',
        style: TextStyle(
          fontSize: 18.0,
          color: Colors.white,
        ),
      ),
    );
  }
}

class MiOtroWidget extends StatelessWidget {
  const MiOtroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: const Text(
        '¡Hola desde MiOtroWidget!',
        style: TextStyle(
          fontSize: 18.0,
          color: Colors.white,
        ),
      ),
    );
  }
}

class OtroWidget extends StatelessWidget {
  const OtroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: const <Widget>[
          ListTile(title: Text('item1')),
          ListTile(title: Text('item2')),
          ListTile(title: Text('item3')),
        ],
      ),
    );
  }
}
