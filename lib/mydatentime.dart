import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_application_2/ui_helper/util.dart';

class DateNTimePage extends StatelessWidget {
  const DateNTimePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Date Time')),
      body: Center(
        child: Column(
          spacing: 10,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyDateNTime()),
                );
              },
              child: Text('Date Time Picker '),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DTCard()),
                );
              },
              child: Text('Date Time'),
            ),
          ],
        ),
      ),
    );
  }
}

class MyDateNTime extends StatefulWidget {
  const MyDateNTime({super.key});

  @override
  State<MyDateNTime> createState() => _MyDateNTimeState();
}

class _MyDateNTimeState extends State<MyDateNTime> {
  @override
  Widget build(BuildContext context) {
    return DTPicker();
  }
}

class DTPicker extends StatefulWidget {
  const DTPicker({super.key});

  @override
  State<DTPicker> createState() => _DTPickerState();
}

class _DTPickerState extends State<DTPicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            Text('Select'),
            ElevatedButton(
              onPressed: () async {
                DateTime? datePicked = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2021),
                  lastDate: DateTime(2027),
                );
                if (datePicked != null) {
                  debugPrint(
                    'Date selected: ${datePicked.day}-${datePicked.month}-${datePicked.year}',
                  );
                }
              },
              child: Text('Date'),
            ),
            ElevatedButton(
              onPressed: () async {
                TimeOfDay? timePicked = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                  initialEntryMode: TimePickerEntryMode.dial,
                );
                if (timePicked != null) {
                  debugPrint(
                    'Time selected: ${timePicked.hour}:${timePicked.minute}',
                  );
                }
              },
              child: Text('Time'),
            ),
          ],
        ),
      ),
    );
  }
}

class DTCard extends StatefulWidget {
  const DTCard({super.key});

  @override
  State<DTCard> createState() => _DTCardState();
}

class _DTCardState extends State<DTCard> {
  var time = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Date Time Card')),
      body: Center(
        child: Card(
          color: Colors.greenAccent,
          shadowColor: Colors.green,
          elevation: 10,
          child: SizedBox(
            height: 250,
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${DateFormat('yMMMMEEEEd').format(time)} \n',
                  style: mTextStyle20(),
                  textAlign: TextAlign.center,
                ),
                Text(
                  '${DateFormat('h:mm a').format(time)} \n',
                  style: mTextStyle20(),
                  textAlign: TextAlign.center,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      time = DateTime.now();
                      debugPrint('$time');
                    });
                  },
                  child: Text('Current Time'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
