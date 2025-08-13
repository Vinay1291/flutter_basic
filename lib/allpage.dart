import 'package:flutter/material.dart';
import 'package:flutter_application_2/myanimation/crossfade.dart';
import 'package:flutter_application_2/myanimation/heroanimation.dart';
import 'package:flutter_application_2/mybutton.dart';
import 'package:flutter_application_2/mycard.dart';
import 'package:flutter_application_2/mycliprrect.dart';
import 'package:flutter_application_2/mycolnrow.dart';
import 'package:flutter_application_2/mycustomwidget.dart';
import 'package:flutter_application_2/mydatentime.dart';
import 'package:flutter_application_2/myhomepage.dart';
import 'package:flutter_application_2/myiconwidget.dart';
import 'package:flutter_application_2/myimage.dart';
import 'package:flutter_application_2/myinkwell.dart';
import 'package:flutter_application_2/mylistwhellscrollview.dart';
import 'package:flutter_application_2/myrichtext.dart';
import 'package:flutter_application_2/rangslider.dart';
import 'package:flutter_application_2/widgets/rect_bth.dart';

import 'myanimation/myfooanimation.dart';
import 'myanimation/myopacity.dart';

// ignore: must_be_immutable
class AllPage extends StatelessWidget {
  var nameFromHome = '';

  // ignore: use_key_in_widget_constructors
  AllPage(this.nameFromHome);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Pages'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        shadowColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.orange, Colors.purple]),
          ),
          child: SingleChildScrollView(
            child: Expanded(
              child: Column(
                spacing: 10,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(children: [Text('Hii, $nameFromHome')]),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CountPlus()),
                      );
                    },
                    child: Text('Counter +'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SmallCal()),
                      );
                    },
                    child: Text('Small Calculator'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyButton()),
                      );
                    },
                    child: Text('Button Types'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyCard()),
                      );
                    },
                    child: Text('Cards'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyRichText()),
                      );
                    },
                    child: Text('Rich Text'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyColNRowPage(),
                        ),
                      );
                    },
                    child: Text('Column And Row'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyCustomWidget(),
                        ),
                      );
                    },
                    child: Text('Custom Widget'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DateNTimePage(),
                        ),
                      );
                    },
                    child: Text('Date Time'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyIconWidget()),
                      );
                    },
                    child: Text('Icon'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyImage()),
                      );
                    },
                    child: Text('Image'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyInkWell()),
                      );
                    },
                    child: Text('Ink Well'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyRangeSlider(),
                        ),
                      );
                    },
                    child: Text('Rang Slider'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyFooAnimationScreen(),
                        ),
                      );
                    },
                    child: Text('Foo Animation'),
                  ),
                  RectButton(
                    text: 'Opacity Animation',
                    myWidget: MyOpacityScreen(),
                  ),
                  RectButton(
                    text: 'Cross Fade Aniamtion',
                    myWidget: MyCrossFade(),
                  ),
                  RectButton(
                    text: 'Hero Animation',
                    myWidget: MyHeroAnimationScreen(),
                  ),
                  RectButton(
                    text: '3D Scroll',
                    myWidget: MyListWhellScrollView(),
                  ),
                  RectButton(text: 'Clip R Rect', myWidget: MyClipRRect()),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
