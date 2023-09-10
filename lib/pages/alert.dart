import 'package:flutter/material.dart';

class AlertD extends StatelessWidget {
  const AlertD({super.key});

  @override
  Widget build(BuildContext context) {
    return const Alert();
  }
}

class Alert extends StatelessWidget {
  const Alert({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Alert Dialog'),
          ),
          body: Center(
              child: ElevatedButton(
                  onPressed: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('AlertDialog Title'),
                          content: const Text('AlertDialog description'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'NO Ñ'),
                              child: const Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'OK'),
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      ),
                  child: const Text('Mostrar Alert Dialog')))),
    );
  }
}
