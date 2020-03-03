import 'package:flutter/material.dart';

class AddTask extends StatefulWidget {
  @override
  _AddTaskState createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  String task = "";
  String textFieldInput = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Adicionar Tarefa'),
        ),
        body: Center(
          child: Container(
              margin: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    onChanged: (text) {
                      setState(() {
                        textFieldInput = text;
                      });
                    },
                    autofocus: true,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Escreva a tarefa aqui...'),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22),
                  ),
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        task = textFieldInput;
                      });
                      Navigator.pop(context, task);
                    },
                    color: Colors.deepPurple,
                    child: Text('Salvar',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                  )
                ],
              )),
        ));
  }
}
