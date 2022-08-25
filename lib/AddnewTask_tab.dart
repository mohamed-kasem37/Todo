import 'package:flutter/material.dart';
import 'package:todo/select_time.dart';

class NewTask extends StatefulWidget {
  static const String routename = 'newtask';

  @override
  State<NewTask> createState() => _NewTaskState();
}

class _NewTaskState extends State<NewTask> {
  @override
  Widget build(BuildContext context) {
    return
        ///////////////////
        Container(
            margin: EdgeInsets.all(30),
            padding: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(color: Colors.white70),
            child: Form(
              child: Column(
                children: [
                  Text('Add New Task',
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          ?.copyWith(color: Colors.black)),
                  SizedBox(height: 30),
                  TextFormField(
                    decoration: new InputDecoration(
                      labelText: 'enter your task',
                      hintStyle: TextStyle(fontSize: 20, color: Colors.black45),
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(25.0),
                        borderSide: new BorderSide(),
                      ),
                      fillColor: Colors.blueAccent,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: new InputDecoration(
                      labelText: 'enter Describtion',
                      hintStyle: TextStyle(fontSize: 20, color: Colors.black45),
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(25.0),
                        borderSide: new BorderSide(),
                      ),
                      fillColor: Colors.blueAccent,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                      onTap: () {
                        selectTime();

                        setState(() {});
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'select time',
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                ?.copyWith(color: Colors.lightBlue),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Text('20/8/2022'),
                  ]),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(children: [
                      MaterialButton(
                        onPressed: () {},
                        child: Text("Cancel",
                            style: TextStyle(color: Colors.white)),
                        color: Colors.blue,
                      ),
                      Spacer(),
                      MaterialButton(
                        onPressed: () {},
                        child: Text(
                          "Add",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                      ),
                    ]),
                  )
                ],
              ),
            ));
  }

  void selectTime() {
    showModalBottomSheet(
      context: context,
      builder: (context) => selecttime(),
    );
  }
}
