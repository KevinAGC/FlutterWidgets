import 'package:flutter/material.dart';

void main() {
  runApp(CheckboxPrueba());
}

class CheckboxPrueba extends StatelessWidget {
  const CheckboxPrueba({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Botón y Checkbox'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Checkbox(
              value: _isChecked,
              onChanged: (value) {
                setState(() {
                  _isChecked = value!;
                });
              },
            ),
            ElevatedButton(
              onPressed: _isChecked ? () => _onButtonPressed() : null,
              child: Text('Botón'),
            ),
          ],
        ),
      ),
    );
  }

  void _onButtonPressed() {
    print('Botón presionado');
  }
}
