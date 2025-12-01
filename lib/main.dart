import 'package:flutter/material.dart';
import 'package:flutter_application_2/allpage.dart';
// import 'package:flutter_application_2/myanimation/myfooanimation.dart';
// import 'package:flutter_application_2/myconstraint.dart';

// import 'package:flutter_application_2/myhomepage.dart';
import 'package:flutter_application_2/splashpage.dart';

// import 'myanimation/myopacity.dart';
// import 'package:flutter_application_2/mypositioned.dart';
// import 'package:flutter_application_2/myiconwidget.dart';
// import 'package:flutter_application_2/myrichtext.dart';
// import 'package:flutter_application_2/mysizedbox.dart';
// import 'package:flutter_application_2/mywrap.dart';
// import 'package:flutter_application_2/ui_helper/util.dart';
// import 'package:flutter_application_2/widgets/rounded_btn.dart';
// import 'package:flutter_application_2/newcustomwidget.dart';
// import 'package:flutter_application_2/mystack.dart';
// import 'package:flutter_application_2/mycustomwidget.dart';
// import 'package:flutter_application_2/myimage.dart';
// import 'package:flutter_application_2/mygrid.dart';
// import 'package:flutter_application_2/mydatentime.dart';
// import 'package:flutter_application_2/myinputtext.dart';
// import 'package:flutter_application_2/mycard.dart';
// import 'package:flutter_application_2/ui_helper/util.dart';
// import 'package:flutter_application_2/myfont.dart';
// import 'package:flutter_application_2/mypaddingnmargin.dart';
// import 'package:flutter_application_2/mylistview.dart';
// import 'package:flutter_application_2/myscrollview.dart';
// import 'package:flutter_application_2/myinkwell.dart';
// import 'package:flutter_application_2/mycolnrow.dart';
// import 'package:flutter_application_2/myimage.dart';
// import 'package:flutter_application_2/mybutton.dart';
// import 'package:flutter_application_2/mycenter.dart';
// import 'package:flutter_application_2/mytext.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: SplashPage(),
      // home: MyClipRRect(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Welcome(),
    );
  }
}

// ignore: must_be_immutable
class Welcome extends StatelessWidget {
  var nameController = TextEditingController();

  Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.orange, Colors.purple],
          end: FractionalOffset(1.0, 0.0),
          begin: FractionalOffset(0.0, 1.0),
        ),
      ),
      child: Center(
        child: SizedBox(
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              TextField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Your Name'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          AllPage(nameController.text.toString()),
                    ),
                  );
                },
                child: Text('All Page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
