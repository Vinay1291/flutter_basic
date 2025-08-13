import 'package:flutter/material.dart';

class MyRichText extends StatelessWidget {
  const MyRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: Center(
        child: RichText(
          text: TextSpan(
            style: TextStyle(color: Colors.grey, fontSize: 13),
            children: <TextSpan>[
              TextSpan(text: 'Hello '),
              TextSpan(
                text: 'World! ',
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(text: 'Welcome to '),
              TextSpan(
                text: 'Flutter',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.deepOrangeAccent,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Montserrat',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Lame extends StatelessWidget {
  const Lame({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Hello ", style: TextStyle(fontSize: 16, color: Colors.grey)),
        Text(
          'World!',
          style: TextStyle(
            fontSize: 34,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
