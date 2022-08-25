import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/task_list_tab.dart';

import 'AddnewTask_tab.dart';
import 'Setting.dart';

class HomeScreen extends StatefulWidget {
  static const String routename = 'homeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text('    ToDo List'),
          // centerTitle: true,
        ),
        body: arr[selectindex],
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            addtask();
            //  selectindex=2;

            setState(() {});
          },
          // tooltip: 'Increment',
          child: Icon(
            Icons.add,
          ),

          elevation: 0,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          //color: Colors.transparent,
          child: BottomNavigationBar(
              onTap: (int index) {
                selectindex = index;
                //print('vdfvsdv$index');
                setState(() {});
              },
              backgroundColor: Colors.transparent,
              elevation: 0,
              items: [
                BottomNavigationBarItem(
                    icon: Image.asset('images/icon_list.png'), label: ''),
                BottomNavigationBarItem(
                    icon: Image.asset('images/icon_settings.png'), label: ''),
              ]),
        ));
  }

  List<Widget> arr = [TaskList(), SettingScreen()];

  void addtask() {
    showModalBottomSheet(
      context: context,
      builder: (context) => NewTask(),
    );
  }
}
