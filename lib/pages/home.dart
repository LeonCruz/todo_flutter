import 'package:flutter/material.dart';
import 'add_task.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> tasks = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de tarefas'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          String newTask = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddTask()),
          );

          setState(() {
            tasks.add(newTask);
          });
        },
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (BuildContext ctx, int index) {
          return Dismissible(
            background: Container(color: Colors.deepPurpleAccent),
            key: Key(tasks[index]),
            onDismissed: (direction) {
              setState(() {
                tasks.removeAt(index);
              });

              Scaffold.of(context).showSnackBar(SnackBar(
                content: Text("$tasks[index] foi excluido"),
              ));
            },
            child: ListTile(
              title: Text(tasks[index]),
            ),
          );
        },
      ),
    );
  }
}
