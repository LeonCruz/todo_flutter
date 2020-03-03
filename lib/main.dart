import 'package:flutter/material.dart';
import 'pages/home.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Tarefas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: HomePage(),
    );
  }
}
