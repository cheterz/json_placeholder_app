import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Center(
          child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 900),
        reverseDuration: const Duration(milliseconds: 0),
        child: Text(
          "$_counter",
          key: ValueKey<int>(_counter),
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline3,
        ),
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.animation),
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
      ),
    );
  }
}
