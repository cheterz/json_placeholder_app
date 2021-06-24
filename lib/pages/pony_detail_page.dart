import 'package:flutter/material.dart';
import 'pony_list_page.dart';

class PonyDetailPage extends StatelessWidget {
  final int ponyId;
  PonyDetailPage(this.ponyId);
  @override
  Widget build(BuildContext context) {
    final pony = ponies[ponyId];
    return Scaffold(
      appBar: AppBar(
        title: Text('Pony Detail Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                color: Colors.pinkAccent,
              ),
              child: Text(
                pony.name,
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Colors.white),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                pony.desc,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
