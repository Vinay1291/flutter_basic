import 'package:flutter/material.dart';

class MyListWhellScrollView extends StatelessWidget {
  const MyListWhellScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List Wheel Scroll View')),
      body: SubListView(),
    );
  }
}

class SubListView extends StatefulWidget {
  const SubListView({super.key});

  @override
  State<SubListView> createState() => _SubListView();
}

class _SubListView extends State<SubListView> {
  var arrlist = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return ListWheelScrollView(
      itemExtent: 200,
      children: arrlist
          .map(
            (value) => Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(21),
              ),
              width: 300,
              child: Center(
                child: Text(
                  '$value',
                  style: TextStyle(fontSize: 21, color: Colors.white),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
