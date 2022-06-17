import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/aboutme.dart';
import 'package:my_portfolio/screens/contactme.dart';
import 'package:my_portfolio/screens/myworks.dart';
import 'package:my_portfolio/screens/skillandservices.dart';
import 'screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'David OH portfolio',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.blue[200],
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        HomePage.id: (context) => const HomePage(),
        AboutMe.id: (context) => const AboutMe(),
        SkillsAndServices.id: (context) => const SkillsAndServices(),
        MyWorks.id: (context) => const MyWorks(),
        ContactMe.id: (context) => const ContactMe(),
      },
    );
  }
}


//flutter run -d chrome --web-renderer html
// flutter build web --release