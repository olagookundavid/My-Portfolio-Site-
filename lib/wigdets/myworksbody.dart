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
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                '         Coming Soon!!!\n\nCheck GitHub Repo Instead:',
                style: TextStyle(fontSize: 40, color: Colors.grey),
              ),
            ),
            GestureDetector(
                child: const Text("Go to Repo",
                    style: TextStyle(
                        fontSize: 20,
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
