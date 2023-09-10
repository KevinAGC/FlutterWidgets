import 'package:flutter/material.dart';

void main() {
  runApp(const SingleChildPrueba());
}

class SingleChildPrueba extends StatelessWidget {
  const SingleChildPrueba({Key? key})
      : super(key: key); // Corrección en la declaración del constructor

  @override
  Widget build(BuildContext context) {
    final containers = [
      ContainerData(name: 'Azul', color: Colors.blue),
      ContainerData(name: 'Verde', color: Colors.green),
      ContainerData(name: 'Naranja', color: Colors.orange),
    ];

    // Ordena los contenedores por nombre en orden alfabético.
    containers.sort((a, b) => a.name.compareTo(b.name));

    return MaterialApp(
      title: 'SingleChildScrollView con 3 Colores',
      home: WidgetScrollView(containers: containers),
    );
  }
}

class WidgetScrollView extends StatelessWidget {
  final List<ContainerData> containers;

  const WidgetScrollView({super.key, required this.containers});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SingleChildScrollView'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: containers.map((container) {
            return Container(
              height: 500,
              color: container.color,
              child: Center(
                child: Text(
                  container.name,
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class ContainerData {
  final String name;
  final Color color;

  ContainerData({required this.name, required this.color});
}
