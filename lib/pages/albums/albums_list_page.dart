import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Здесь все довольно очевидно
class AlbumsListPage extends StatefulWidget {
  @override
  _AlbumsListPageState createState() => _AlbumsListPageState();
}

class _AlbumsListPageState extends State<AlbumsListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Post List Page"),
        ),
        body: Container());
  }
}
