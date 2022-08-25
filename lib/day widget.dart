import 'package:flutter/material.dart';

class Daywidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(15),
        color: Colors.white,
        child: Column(
          children: [
            Text('data',
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    ?.copyWith(color: Colors.black)),
            Text(
              '534',
              style: Theme.of(context)
                  .textTheme
                  .headline3
                  ?.copyWith(color: Colors.black),
            ),
          ],
        ));
  }
}
