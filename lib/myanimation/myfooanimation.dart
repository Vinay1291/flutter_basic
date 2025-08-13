import 'package:flutter/material.dart';

class MyFooAnimationScreen extends StatelessWidget {
  const MyFooAnimationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Foo Animation'), backgroundColor: Colors.purpleAccent,),
      body: TypeAnimation(),
    );
  }
}

class TypeAnimation extends StatelessWidget {
  const TypeAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          spacing: 30,
          children: [
            FooAnimaiton(),
            FooAnimaiton(
              curve: Curves.bounceInOut,
              startColor: Colors.deepPurpleAccent,
              endColor: Colors.brown,
            ),
            FooAnimaiton(
              curve: Curves.fastOutSlowIn,
              startColor: Colors.black,
              endColor: Colors.white30,
            ),
            FooAnimaiton(
              curve: Curves.elasticInOut,
              startColor: Colors.orange,
              endColor: Colors.greenAccent,
            ),

          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class FooAnimaiton extends StatefulWidget {
  final Curve curve;
  final Color startColor;
  final Color endColor;

  const FooAnimaiton({
    super.key,
    this.curve =  Curves.slowMiddle,
    this.startColor = Colors.blue,
    this.endColor = Colors.red,
  });

  @override
  State<FooAnimaiton> createState() => _FooAnimaitonState();
}

class _FooAnimaitonState extends State<FooAnimaiton> {

  var _width = 200.0;

  var _height = 100.0;

  bool flag = true;
  Decoration myDecor = BoxDecoration(
    borderRadius: BorderRadius.circular(2),
    color: Colors.blueGrey,
  );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        spacing: 5.0,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedContainer(
            duration: Duration(seconds: 2),
            width: _width,
            height: _height,
            curve: widget.curve,
            decoration: myDecor,
          ),
          ElevatedButton(
            onPressed: () {
              if (flag) {
                _width = 100.0;
                _height = 200.0;
                flag = false;
                myDecor = BoxDecoration(
                  borderRadius: BorderRadius.circular(21),
                  color: widget.startColor,
                );
              } else {
                _width = 200.0;
                _height = 100.0;
                flag = true;
                myDecor = BoxDecoration(
                  borderRadius: BorderRadius.circular(1),
                  color: widget.endColor,
                );
              }
              setState(() {});
            },
            child: Text('Animate'),
          ),
        ],
      ),
    );
  }
}
