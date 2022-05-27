// ignore_for_file: deprecated_member_use

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMeBody extends StatefulWidget {
  const ContactMeBody({Key? key}) : super(key: key);

  @override
  State<ContactMeBody> createState() => _ContactMeBodyState();
}

class _ContactMeBodyState extends State<ContactMeBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Contact Me',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          SizedBox(
            height: 30,
            child: AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                FlickerAnimatedText('I am no ghost,',
                    textStyle: const TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.w800),
                    speed: const Duration(seconds: 2),
                    entryEnd: 1),
                FlickerAnimatedText('here are various ways to\nreach me',
                    textStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.w800),
                    speed: const Duration(seconds: 2),
                    entryEnd: 1),
                FlickerAnimatedText("Kindly reach out",
                    textStyle: const TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                        fontWeight: FontWeight.w800),
                    speed: const Duration(seconds: 2),
                    entryEnd: 1),
              ],
            ),
          ),
          Column(
            children: [
              getIcons("https://img.icons8.com/android/480/ffffff/twitter.png",
                  'Twitter', () {
                launch('https://twitter.com/erijesudo');
              }),
              getIcons("https://img.icons8.com/metro/308/ffffff/linkedin.png",
                  'Linkedin', () {
                launch(
                    'https://www.linkedin.com/in/david-olagookun-17a862218/');
              }),
              getIcons(
                  "https://img.icons8.com/material-rounded/384/ffffff/github.png",
                  'GitHub', () {
                launch('https://github.com/olagookundavid');
              }),
              getIcons(
                  "https://img.icons8.com/material-rounded/384/ffffff/gmail",
                  'Gmail', () {
                launch('mailto:erijesudo@gmail.com');
              }),
              getIcons(
                  "https://img.icons8.com/material-rounded/384/ffffff/phone",
                  'Phone/Whatsapp', () {
                launch('tel:+234 7085569828');
              }),
              SizedBox(
                height: 40,
                child: AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    ScaleAnimatedText('See you soon!!!',
                        textStyle: const TextStyle(
                            color: Colors.cyanAccent, fontSize: 30),
                        scalingFactor: 0.2),
                    ScaleAnimatedText('See you soon!!!',
                        textStyle: const TextStyle(
                            color: Colors.redAccent, fontSize: 30),
                        scalingFactor: 0.2),
                    ScaleAnimatedText('See you soon!!!',
                        textStyle: const TextStyle(
                            color: Colors.blueAccent, fontSize: 30),
                        scalingFactor: 0.2),
                    ScaleAnimatedText('See you soon!!!',
                        textStyle: const TextStyle(
                            color: Colors.indigoAccent, fontSize: 30),
                        scalingFactor: 0.2),
                    ScaleAnimatedText('See you soon!!!',
                        textStyle: const TextStyle(
                            color: Colors.orangeAccent, fontSize: 30),
                        scalingFactor: 0.2)
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}

GestureDetector getIcons(String icon, String text, Function() onpressed) {
  return GestureDetector(
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Image.network(
            icon,
            width: 50,
            height: 50,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: const TextStyle(
                fontSize: 30,
                decoration: TextDecoration.underline,
                color: Colors.white54,
                letterSpacing: 1),
          ),
        ],
      ),
    ),
    onTap: onpressed,
  );
}
