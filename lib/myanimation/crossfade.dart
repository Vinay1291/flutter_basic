import 'package:flutter/material.dart';

class MyCrossFade extends StatefulWidget {
  const MyCrossFade({super.key});

  @override
  State<MyCrossFade> createState() => _MyCrossFadeState();
}

class _MyCrossFadeState extends State<MyCrossFade> {
  bool isFirst = true;

  void reload() {
    setState(() {
      if (isFirst) {
        isFirst = false;
      } else {
        isFirst = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cross Fade Widget')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
              firstChild: Container(
                width: 200,
                height: 200,
                color: Colors.blue,
              ),
              secondChild: Image.asset(
                'assets/img/logo.jpeg',
                width: 100,
                height: 100,
              ),
              crossFadeState: isFirst
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: Duration(seconds: 2),
              sizeCurve: Curves.fastOutSlowIn,
              firstCurve: Curves.bounceInOut,
            ),
            ElevatedButton(onPressed: reload, child: Text('show')),
          ],
        ),
      ),
    );
  }
}
