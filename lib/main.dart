import 'package:flutter/material.dart';
import 'Formulario.dart';
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'STATEFUL2',
      home: Scaffold(
        appBar: AppBar(
          title: Text('STATEFUL2'),
        ),
        body: Center(
          child: Formulario(),
        ),
      ),
    );
  }
}

