import 'package:flutter/material.dart';
import 'package:json_placeholder_app/pages/pony_list_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Json Placeholder App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: PonyListPage(),
    );
  }
}
