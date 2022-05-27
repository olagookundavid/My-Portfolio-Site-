// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyWorkBody extends StatelessWidget {
  const MyWorkBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'My Works / Projects',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
            getworks(
                'My Notes',
                'An app that helps users organise and store notes',
                'https://github.com/olagookundavid/My-Notes'),
            getworks(
                'My Portfolio',
                'My Portfolio web(the one you are currently on)',
                'https://github.com/olagookundavid/My-Portfolio-Site-'),
            getworks(
                'ToDo',
                'Create tasks, mark them off and delete(crud storage)',
                'https://github.com/olagookundavid/To-do-App'),
            getworks(
                'Team Chat',
                'A chat app for group interactions, powered with Firebase',
                'https://github.com/olagookundavid/Team-Chat-App'),
            getworks(
                'Coin App',
                'An app that gets real time coin price updates',
                'https://github.com/olagookundavid/Coin-Price-Update-App'),
            const Text('See all my remaining projects :',
                style: TextStyle(
                    color: Colors.white70,
                    fontStyle: FontStyle.italic,
                    fontSize: 15)),
            GestureDetector(
                child: const Text("Go to Repo",
                    style: TextStyle(
                        fontSize: 15,
                        decoration: TextDecoration.underline,
                        color: Colors.blue)),
                onTap: () {
                  launch('https://github.com/olagookundavid');
                }),
            const SizedBox(
              height: 20,
              width: double.infinity,
            )
          ],
        ));
  }
}

Padding getworks(String topic, String description, String link) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          topic,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.w900, fontSize: 23),
        ),
        Text(description,
            style: const TextStyle(
                color: Colors.white70,
                fontStyle: FontStyle.italic,
                fontSize: 15)),
        GestureDetector(
          child: const Text('Go to repo',
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.underline,
                  fontSize: 20)),
          onTap: () {
            launch(link);
          },
        ),
        const SizedBox(width: double.infinity)
      ],
    ),
  );
}

Column getworks2(String topic, String description, String link) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        topic,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.w900, fontSize: 15),
      ),
      Text(description,
          style: const TextStyle(
              color: Colors.white70, fontStyle: FontStyle.italic)),
      GestureDetector(
        child: const Text('Go to repo',
            style: TextStyle(
                color: Colors.blueAccent,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline)),
        onTap: () {
          launch(link);
        },
      ),
      const SizedBox(width: double.infinity)
    ],
  );
}
