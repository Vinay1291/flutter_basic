import 'package:flutter/material.dart';
import 'package:flutter_application_2/myanimation/heroanimaiton1.dart';

class MyHeroAnimationScreen extends StatelessWidget {
  const MyHeroAnimationScreen({super.key});

  @override
  Widget build(BuildContext constext) {
    return Scaffold(
      appBar: AppBar(title: Text('Hero Animation')),
      body: Hii(),
    );
  }
}

class Hii extends StatelessWidget {
  const Hii({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HeroDetail()),
            );
          },
          child: Hero(
            tag: 'background',
            child: Image.asset('assets/img/logo.jpeg', width: 100, height: 100),
          ),
        ),
      ),
    );
  }
}
