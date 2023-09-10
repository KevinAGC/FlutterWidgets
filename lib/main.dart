import 'package:flutter/material.dart';
import 'package:proyecto1/pages/alert.dart';
import 'package:proyecto1/pages/bottom.dart';
import 'package:proyecto1/pages/card.dart';
import 'package:proyecto1/pages/checkbox.dart';
import 'package:proyecto1/pages/date.dart';
import 'package:proyecto1/pages/drawer.dart';
import 'package:proyecto1/pages/form.dart';
import 'package:proyecto1/pages/list.dart';
import 'package:proyecto1/pages/radio.dart';
import 'package:proyecto1/pages/singlechild.dart';
import 'package:proyecto1/pages/textform.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Lista());
  }
}

class Lista extends StatelessWidget {
  const Lista({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Menú Principal'),
        ),
        body: Center(
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AlertD()),
                  );
                },
                child: const Text('Alert'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PruebaBottom()),
                  );
                },
                child: const Text('Bottom Navigation Bar'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PruebaCard()),
                  );
                },
                child: const Text('Card Class'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CheckboxPrueba()),
                  );
                },
                child: const Text('Checkbox'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DrawerPrueba()),
                  );
                },
                child: const Text('Drawer'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TextFormFieldPrueba()),
                  );
                },
                child: const Text('TextFormField'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FormFieldPrueba()),
                  );
                },
                child: const Text('FormField'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ListViewPrueba()),
                  );
                },
                child: const Text('ListView'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RadioPrueba()),
                  );
                },
                child: const Text('Radio'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WidgetPrueba()),
                  );
                },
                child: const Text('Date Picker'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SingleChildPrueba()),
                  );
                },
                child: const Text('SingleChildScrollView'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
