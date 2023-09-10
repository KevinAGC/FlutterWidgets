import 'package:flutter/material.dart';

void main() {
  runApp(const RadioPrueba());
}

class RadioPrueba extends StatelessWidget {
  const RadioPrueba({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Radio',
      home: RadioList(),
    );
  }
}

class RadioList extends StatefulWidget {
  const RadioList({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RadioListState createState() => _RadioListState();
}

class _RadioListState extends State<RadioList> {
  int _selectedItem = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio'),
      ),
      body: ListView(
        children: <Widget>[
          for (int i = 1; i <= 10; i++)
            RadioListTile<int>(
              title: Text('Item $i'),
              value: i,
              groupValue: _selectedItem,
              onChanged: (value) {
                setState(() {
                  _selectedItem = value!;
                });
              },
            ),
        ],
      ),
    );
  }
}
