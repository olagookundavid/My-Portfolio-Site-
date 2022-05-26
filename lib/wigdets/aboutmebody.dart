import 'package:flutter/material.dart';

class AboutmeTextbody extends StatelessWidget {
  const AboutmeTextbody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: const [
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'About Me!',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                  fontStyle: FontStyle.italic),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 20, left: 20, right: 20),
            child: Text(
              'Olagookun David (David OH) is a Mathematics major now turned software developer. he remembers the first time he discovered what people like him could do with their hands, writing code to develop and maintain software, a whole new world of possibility was opened before him. And when he discovered flutter he felt at home, now he\'s on a journey to uncover the great possiblities of the language, would you join him on this journey??? \nAs a person he\'s blessed with people skills and is goal driven, daring and creative amongst other things, all this he hopes to give and improve at any level or role given in a well established IT firm \nHe\'s confident, inquisitive, curious and eager to learn new techniques and technologies',
              style: TextStyle(
                  wordSpacing: 1,
                  color: Colors.white,
                  letterSpacing: 1,
                  fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
