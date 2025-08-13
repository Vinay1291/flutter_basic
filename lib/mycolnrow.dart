import 'package:flutter/material.dart';

class MyColNRowPage extends StatelessWidget {
  const MyColNRowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column And Row'),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: MyColNRow(),
    );
  }
}

class MyColNRow extends StatelessWidget {
  const MyColNRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      // width: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('R1', style: TextStyle(fontSize: 25)),
              Text('R2', style: TextStyle(fontSize: 25)),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      print('hii col n row');
                    },
                    child: Text('BTN 1'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print('hii col n row');
                    },
                    child: Text('BTN 2'),
                  ),
                ],
              ),
              Text('R3', style: TextStyle(fontSize: 25)),
              Text('R4', style: TextStyle(fontSize: 25)),
              Text('R5', style: TextStyle(fontSize: 25)),
            ],
          ),
          Text('A', style: TextStyle(fontSize: 25)),
          Text('B', style: TextStyle(fontSize: 25)),
          Text('C', style: TextStyle(fontSize: 25)),
          Text('D', style: TextStyle(fontSize: 25)),
          Text('E', style: TextStyle(fontSize: 25)),
          ElevatedButton(
            onPressed: () {
              print('Pressed');
            },
            child: Text('Click'),
          ),
        ],
      ),
    );
  }
}
