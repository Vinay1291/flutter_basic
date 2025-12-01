import 'package:flutter/material.dart';

class CountPlus extends StatelessWidget {
  const CountPlus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter ++'), backgroundColor: Colors.green),
      body: MyHome(),
    );
  }
}

class SmallCal extends StatelessWidget {
  const SmallCal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Small Calculator'),
        backgroundColor: Colors.green,
      ),
      body: MyStateful(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Count : $count', style: TextStyle(fontSize: 34)),
          SizedBox(
            height: 50,
            width: 180,
            child: FloatingActionButton(
              onPressed: () {
                debugPrint('$count');
                count++;
                setState(() {});
              },
              child: Text('Increment Counter.'),
            ),
          ),
        ],
      ),
    );
  }
}

class MyStateful extends StatefulWidget {
  const MyStateful({super.key});

  @override
  State<MyStateful> createState() => _MyStateful();
}

class _MyStateful extends State<MyStateful> {
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();

  var result = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade100,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: no1Controller,
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: no2Controller,
                keyboardType: TextInputType.number,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 21),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());
                        var res = no1 + no2;

                        result = "The Sum of  $no1 and $no2 is $res.";
                        setState(() {});
                      },
                      child: Text('Add'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());
                        var res = no1 - no2;

                        result =
                            "The Diffrence between  $no1 and $no2 is $res.";
                        setState(() {});
                      },
                      child: Text('Sub'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());
                        var res = no1 * no2;

                        result = "The Product of  $no1 and $no2 is $res.";
                        setState(() {});
                      },
                      child: Text('Mult'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());
                        var res = no1 / no2;

                        result =
                            "The $no1 Divided by $no2 is ${res.toStringAsFixed(2)}.";
                        setState(() {});
                      },
                      child: Text('Div'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(21),
                child: Text(
                  result,
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
