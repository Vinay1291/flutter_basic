import 'package:flutter/material.dart';

class MyRangeSlider extends StatelessWidget {
  const MyRangeSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Range'), backgroundColor: Colors.blueAccent),
      body: MRS(),
    );
  }
}

// ignore: must_be_immutable
class MRS extends StatefulWidget {
  const MRS({super.key});

  @override
  State<MRS> createState() => _MRSState();
}

class _MRSState extends State<MRS> {
  RangeValues values = RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(
      values.start.toString(),
      values.end.toString(),
    );
    return Center(
      child: RangeSlider(
        max: 100,
        values: values,
        labels: labels,
        divisions: 20,
        inactiveColor: Colors.green,
        activeColor: Colors.green.shade500,
        onChanged: (newValue) {
          values = newValue;
          debugPrint("${newValue.start} and ${newValue.end}");
          setState(() {});
        },
      ),
    );
  }
}
