import 'package:flutter/material.dart';

void main() {
  runApp(const ListViewPrueba());
}

class ListViewPrueba extends StatelessWidget {
  const ListViewPrueba({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView',
      home: ListViewGrande(),
    );
  }
}

class ListViewGrande extends StatelessWidget {
  final List<int> items = List.generate(500, (index) => index + 1);

  ListViewGrande({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Elemento ${items[index]}'),
          );
        },
      ),
    );
  }
}
