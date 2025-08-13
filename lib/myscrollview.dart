import 'package:flutter/material.dart';

class MyScrollView extends StatelessWidget {
  const MyScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 11),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 11),
                      height: 200,
                      width: 200,
                      color: Colors.orange,
                    ),

                    Container(
                      margin: EdgeInsets.only(right: 11),
                      height: 200,
                      width: 200,
                      color: Colors.lightBlue,
                    ),

                    Container(
                      margin: EdgeInsets.only(right: 11),
                      height: 200,
                      width: 200,
                      color: Colors.green,
                    ),

                    Container(
                      margin: EdgeInsets.only(right: 11),
                      height: 200,
                      width: 200,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 11),
              height: 200,
              color: Colors.blue,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 11),
              height: 200,
              color: Colors.black,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 11),
              height: 200,
              color: Colors.green,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 11),
              height: 200,
              color: Colors.lightGreen,
            ),
          ],
        ),
      ),
    );
  }
}
