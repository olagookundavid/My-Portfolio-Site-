import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/contactme.dart';
import 'package:my_portfolio/wigdets/rounded_button.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const BodyText(text: 'Hi, Hey There'),
        const BodyText(text: 'I\'m David OH,'),
        const BodyText(text: 'A Flutter Developer.'),
        const BodyText2(),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: RoundedButton(
            title: 'Let\'s Connect',
            colour: Colors.white,
            onPressed: () {
              Navigator.of(context).pushNamed(ContactMe.id);
            },
          ),
        )
      ],
    );
  }
}

class HomeBody2 extends StatelessWidget {
  const HomeBody2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BodyText(text: 'Hi, Hey There,'),
          const BodyText(text: 'I\'m David OH, A Flutter Developer.'),
          const BodyText2(),
          Center(
              child: RoundedButton(
            title: 'Let\'s Connect',
            colour: Colors.white,
            onPressed: () {
              Navigator.of(context).pushNamed(ContactMe.id);
            },
          )),
        ],
      ),
    );
  }
}

class BodyText extends StatelessWidget {
  const BodyText({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.green,
            fontStyle: FontStyle.italic),
      ),
    );
  }
}

class BodyText2 extends StatelessWidget {
  const BodyText2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Have you ever wondered who is responsible for building and maintaining those amazing apps that we love and use everyday?, Yes, that\'s what a mobile developer does, and i use Flutter to help build responsive, elegant, functional and reliable crossplatform apps with;',
            style:
                TextStyle(color: Colors.white, letterSpacing: 1, fontSize: 20),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 30,
            child: AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                FadeAnimatedText('- Beautiful user interface',
                    duration: const Duration(seconds: 3),
                    textStyle: const TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold),
                    fadeOutBegin: 0.9,
                    fadeInEnd: 0.7),
                FadeAnimatedText('- Functional user experience',
                    textStyle: const TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold),
                    duration: const Duration(seconds: 3),
                    fadeOutBegin: 0.9,
                    fadeInEnd: 0.7),
                FadeAnimatedText('- Mobile responsive/adaptive designs',
                    textStyle: const TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold),
                    duration: const Duration(seconds: 3),
                    fadeOutBegin: 0.9,
                    fadeInEnd: 0.7),
                FadeAnimatedText('- Good OS compatability',
                    textStyle: const TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold),
                    duration: const Duration(seconds: 3),
                    fadeOutBegin: 0.9,
                    fadeInEnd: 0.7),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
