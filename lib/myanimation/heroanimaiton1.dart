import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/rect_bth.dart';

class HeroDetail extends StatelessWidget {
  const HeroDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RectButtonPop(text: 'X'),
            Hero(tag: 'background', child: Image.asset('assets/img/logo.jpeg')),
          ],
        ),
      ),
    );
  }
}
