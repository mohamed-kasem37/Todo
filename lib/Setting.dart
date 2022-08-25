import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  static const String routename = 'SettingScreen';

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Text(
          'language',
          style: Theme.of(context).textTheme.headline4,
        ),
        InkWell(
          onTap: () {
            //  print('gergreger${poviderLanguage.currentTheme}');
          },
          child: Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(9),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border:
                    Border.all(width: 1, color: Theme.of(context).primaryColor),
                color: Colors.white,
              ),
              child: Text(
                'English',
                style: Theme.of(context).textTheme.headline6,
              )),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Mode',
          style: Theme.of(context).textTheme.headline4,
        ),
        InkWell(
          onTap: () {},
          child: Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(9),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border:
                    Border.all(width: 1, color: Theme.of(context).primaryColor),
                color: Colors.white,
              ),
              child: Text(
                'Light',
                style: Theme.of(context).textTheme.headline6,
              )),
        ),
      ]),
    );
  }
}
