import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TaskWidgit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Slidable(
      startActionPane: ActionPane(
        motion: DrawerMotion(),
        children: [
          SlidableAction(
              onPressed: (Context) {},
              borderRadius: BorderRadius.circular(20),
              backgroundColor: Color(0xFFFE4A49),
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'Delete')
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.white),
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        // color: Colors.white,
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blueAccent),
              width: 8,
              height: 55,
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              children: [
                Text(
                  'Play basket ball',
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Icon(
                      Icons.access_time_outlined,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text('4:45 Am'),
                  ],
                )
              ],
            ),
            Spacer(),
            Container(
                padding:
                    EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueAccent),
                child: ImageIcon(AssetImage("images/icon_check.png"))),
          ],
        ),
      ),
    );
  }
}
