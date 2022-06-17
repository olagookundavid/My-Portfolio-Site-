// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:my_portfolio/wigdets/rounded_button.dart';
import 'package:url_launcher/url_launcher.dart';

class SkillsAndServicesBody extends StatelessWidget {
  const SkillsAndServicesBody({Key? key, required this.width})
      : super(key: key);
  final double width;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            'My Skills',
            style: TextStyle(
                fontSize: 30,
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
        ),
        getSkill(Icons.circle, 'Git / GitHub'),
        getSkill(Icons.circle, 'Excel / Power BI'),
        getSkill(Icons.circle, 'Dart'),
        getSkill(Icons.circle, 'Flutter Mobile / Flutter Web'),
        getSkill(Icons.circle, 'FireBase / FireStore'),
        getSkill(Icons.circle, 'Local Storage'),
        getSkill(Icons.circle, 'Provider (state management)'),
        MediaQuery.of(context).size.width < 800
            ? SizedBox(
                height: 150,
                child: Column(
                  children: [
                    const Spacer(),
                    RoundedButton(
                        title: 'Checkout Resume',
                        onPressed: () {
                          launch(
                              'https://drive.google.com/file/d/1xDQB0Etv1J7-NYiWi5X_vANVP-Pf705d/view');
                        }),
                    const Spacer(),
                    RoundedButton(
                        title: 'Checkout Cover Letter',
                        onPressed: () {
                          launch(
                              'https://drive.google.com/file/d/16P-Kzy3IEMnn4U-QE9ynxzQjpOlVaNFj/view');
                        }),
                    const Spacer(),
                  ],
                ),
              )
            : Row(
                children: [
                  const Spacer(),
                  RoundedButton(
                      title: 'Checkout Resume',
                      onPressed: () {
                        launch(
                            'https://drive.google.com/file/d/1xDQB0Etv1J7-NYiWi5X_vANVP-Pf705d/view');
                      }),
                  const Spacer(),
                  RoundedButton(
                      title: 'Checkout Cover Letter',
                      onPressed: () {
                        launch(
                            'https://drive.google.com/file/d/16P-Kzy3IEMnn4U-QE9ynxzQjpOlVaNFj/view');
                      }),
                  const Spacer(),
                ],
              ),
        const Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            'My Soft Skills',
            style: TextStyle(
                fontSize: 30,
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
        ),
        getSkill(Icons.circle, 'Good Communication Skills'),
        getSkill(Icons.circle, 'Critical Thinking'),
        getSkill(Icons.circle, 'Problem Solving'),
        getSkill(Icons.circle, 'Team Work & Remote Collaboration'),
        getSkill(Icons.circle, 'Professionalism '),
        getSkill(Icons.circle, 'Strong work Ethics'),
        getSkill(Icons.circle, 'Flexibility & Adaptability'),
        getSkill(Icons.circle, 'Time Management skills'),
        const SizedBox(
          width: double.infinity,
          height: 20,
        ),
      ],
    );
  }
}

Padding getSkill(IconData icon, String text) {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: Row(
      children: [
        Icon(
          icon,
          color: Colors.green,
          size: 10,
        ),
        const SizedBox(width: 10),
        Text(
          text,
          style: const TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),
        )
      ],
    ),
  );
}
