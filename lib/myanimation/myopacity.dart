import 'package:flutter/material.dart';


class MyOpacityScreen extends StatefulWidget {
  const MyOpacityScreen({super.key});


  @override
  State<MyOpacityScreen> createState() => _MyOpacityScreen();
}

class _MyOpacityScreen extends State<MyOpacityScreen> {

  var myOpacity = 1.0;
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Foo Animation')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: myOpacity,
              duration: Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              child: Container(
                width: 200,
                height: 100,
                color: Colors.blueAccent,
              ),
            ),
            ElevatedButton(onPressed: () {

              if (isVisible) {
                myOpacity = 0.0;
                isVisible = false;
              }else {
                myOpacity = 1.0;
                isVisible = true;
              }

              setState(() {});
            }, child: Text('Opacity Animation'))
          ],
        ),
      ),
    );
  }
}