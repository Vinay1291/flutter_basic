import 'package:flutter/material.dart';

class MyGrid extends StatefulWidget {
  const MyGrid({super.key});

  @override
  State<MyGrid> createState() => _MyGridState();
}

class _MyGridState extends State<MyGrid> {
  var arrColors = [
    Colors.deepOrangeAccent,
    Colors.grey,
    Colors.blue,
    Colors.pink,
    Colors.green,
    Colors.purpleAccent,
    Colors.brown,
    Colors.green,
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
      ),
      itemBuilder: (context, index) {
        return Container(color: arrColors[index]);
      },
      itemCount: arrColors.length,
    );

    // Column(
    //   children: [
    //     Container(
    //       height: 200,
    //       child: GridView.count(
    //         crossAxisCount: 2,
    //         crossAxisSpacing: 5,
    //         mainAxisSpacing: 5,
    //         children: [
    //           for (int i = 0; i < 7; i++) Container(color: arrColors[i]),

    //           // Container(color: arrColors[1]),
    //           // Container(color: arrColors[2]),
    //           // Container(color: arrColors[3]),
    //           // Container(color: arrColors[4]),
    //           // Container(color: arrColors[5]),
    //           // Container(color: arrColors[6]),
    //           // Container(color: arrColors[7]),
    //         ],
    //       ),
    //     ),
    //     Container(
    //       height: 200,
    //       child: GridView.extent(
    //         crossAxisSpacing: 2,
    //         mainAxisSpacing: 2,
    //         maxCrossAxisExtent: 100,
    //         children: [
    //           Container(color: arrColors[0]),
    //           Container(color: arrColors[1]),
    //           Container(color: arrColors[2]),
    //           Container(color: arrColors[3]),
    //           Container(color: arrColors[4]),
    //           Container(color: arrColors[5]),
    //           Container(color: arrColors[6]),
    //           Container(color: arrColors[7]),
    //         ],
    //       ),
    //     ),
    //   ],
    // );
  }
}
