// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyWorkBody extends StatelessWidget {
  const MyWorkBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
        getworks('My Notes', 'An app that helps users organise and store notes',
            'https://github.com/olagookundavid/My-Notes'),
        getworks(
            'My Portfolio',
            'My Portfolio web, responsive for both desktop & mobile',
            'https://github.com/olagookundavid/My-Portfolio-Site-'),
        getworks(
            'ToDo',
            'Create tasks, mark them off and delete(crud storage), with provider as state management',
            'https://github.com/olagookundavid/To-do-App'),
        getworks(
            'ToDo',
            'Create tasks, mark them off and delete(crud storage) with Riverpod as state management',
            'https://github.com/olagookundavid/To-do-Riverpod-variation'),
        getworks(
            'Team Chat',
            'A chat app for group interactions, powered with Firebase',
            'https://github.com/olagookundavid/Team-Chat-App'),
        getworks(
            'Image text editor',
            'An app that allows users to add & edit texts to pictures and save to gallery',
            'https://github.com/olagookundavid/Image-editor'),
        getworks(
            'On-Boarding screen',
            'Custom onboarding screen with various Auth providers',
            'https://github.com/olagookundavid/onboarding-screen-'),
        getworks(
            'WhatsApp Clone',
            'Responsive WhatsApp mobile and desktop clone, complete with status',
            'https://github.com/olagookundavid/whatsapp-clone'),
        getworks(
            'My Journal',
            'An app that enables you to keep notes of your journals',
            'https://github.com/olagookundavid/My_Journal'),
        getworks(
            'COVID-19 Update App',
            'Covid real-time updates app, both mobile and desktop(web) enabled',
            'https://github.com/olagookundavid/Covid19-App'),
        getworks(
            'Movie App',
            'App to find out about your favorite movies real-time',
            'https://github.com/olagookundavid/Movie-App'),
        getworks(
            'Coin Price App',
            'Live prices of top 5 cryptos in 30 fiat currencies',
            'https://github.com/olagookundavid/Coin-Price-Update-App'),
        getworks('BMI calculator', 'A simple BMI calculator',
            'https://github.com/olagookundavid/Bmi-Calculator'),
        const Text('Ui projects:',
            style: TextStyle(
                color: Colors.white70,
                fontStyle: FontStyle.italic,
                fontSize: 20)),
        getworks('Thrift saving App', 'A savings app',
            'https://github.com/olagookundavid/Thrift-app-Ui'),
        getworks('Fruit App Ui', 'A fruit App ',
            'https://github.com/olagookundavid/fruit-app-ui'),
        getworks('Fashion App Ui', 'A fashion App',
            'https://github.com/olagookundavid/fashion-app-ui'),
        getworks('Book store homepage', 'An online book store',
            'https://github.com/olagookundavid/book-store-homepage-web'),
        const Text('See all my remaining projects :',
            style: TextStyle(
                color: Colors.white70,
                fontStyle: FontStyle.italic,
                fontSize: 20)),
        const SizedBox(
          height: 10,
        ),
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
    );
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
