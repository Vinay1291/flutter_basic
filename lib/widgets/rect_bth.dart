import 'package:flutter/material.dart';

class RectButton extends StatelessWidget {
  final Widget myWidget;
  final String text;

  const RectButton({super.key, required this.text, required this.myWidget});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => myWidget),
        );
      },
      style: ElevatedButton.styleFrom(
        // backgroundColor: Colors.blue,
        // shadowColor: Colors.blueAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(1)),
        ),
      ),
      child: Text(text),
    );
  }
}

class RectButtonPop extends StatelessWidget {
  final String text;

  const RectButtonPop({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pop(context);
      },
      style: ElevatedButton.styleFrom(
        // backgroundColor: Colors.blue,
        // shadowColor: Colors.blueAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(1)),
        ),
      ),
      child: Text(text),
    );
  }
}
