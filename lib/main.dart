import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todo/HomeScreen.dart';
import 'package:todo/Splash_Screen.dart';
import 'package:todo/select_time.dart';
import 'package:todo/task_list_tab.dart';
import 'package:todo/themeApp.dart';

import 'Setting.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Mytheme.lighttheme,
      routes: {
        HomeScreen.routename: (_) => HomeScreen(),
        TaskList.routename: (_) => TaskList(),
        SettingScreen.routename: (_) => SettingScreen(),
        selecttime.routename: (_) => selecttime(),
        SplashScreen.routename: (_) => SplashScreen(),
      },
      initialRoute: SplashScreen.routename,
    );
  }
}
