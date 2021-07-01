import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Здесь все довольно очевидно
class ToDoListPage extends StatefulWidget {
  @override
  _ToDoListPageState createState() => _ToDoListPageState();
}

class _ToDoListPageState extends State<ToDoListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Post List Page"),
        ),
        body: Container());
  }
}
