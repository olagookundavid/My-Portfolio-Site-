import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/contactme.dart';
import 'package:my_portfolio/screens/homepage.dart';
import 'package:my_portfolio/screens/myworks.dart';
import 'package:my_portfolio/screens/skillandservices.dart';

import '../screens/aboutme.dart';

final List _isHovering = [
  false,
  false,
  false,
  false,
  false,
];

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({
    Key? key,
  }) : super(key: key);

  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.lightBlueAccent,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              getSideBarContent(
                  () {
                    Navigator.pushNamed(context, HomePage.id);
                  },
                  0,
                  'Home',
                  (value) {
                    setState(() {
                      value ? _isHovering[0] = true : _isHovering[0] = false;
                    });
                  }),
              getPadding(),
              getSideBarContent(
                  () {
                    Navigator.pushNamed(context, AboutMe.id);
                  },
                  1,
                  'About Me',
                  (value) {
                    setState(() {
                      value ? _isHovering[1] = true : _isHovering[1] = false;
                    });
                  }),
              getPadding(),
              getSideBarContent(
                  () {
                    Navigator.pushNamed(context, SkillsAndServices.id);
                  },
                  2,
                  'My Skilles And services',
                  (value) {
                    setState(() {
                      value ? _isHovering[2] = true : _isHovering[2] = false;
                    });
                  }),
              getPadding(),
              getSideBarContent(
                  () {
                    Navigator.pushNamed(context, MyWorks.id);
                  },
                  3,
                  'My Works',
                  (value) {
                    setState(() {
                      value ? _isHovering[3] = true : _isHovering[3] = false;
                    });
                  }),
              getPadding(),
              getSideBarContent(
                  () {
                    Navigator.pushNamed(context, ContactMe.id);
                  },
                  4,
                  'Contact Me',
                  (value) {
                    setState(() {
                      value ? _isHovering[4] = true : _isHovering[4] = false;
                    });
                  }),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Copyright © 2022 | David-oH',
                    style: TextStyle(
                      color: Colors.blueGrey.shade300,
                      fontSize: 20,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

InkWell getSideBarContent(
    Function() ontapped, int i, String text, Function(bool) onhover) {
  return InkWell(
    onTap: ontapped,
    onHover: onhover,
    child: Text(
      text,
      style: TextStyle(
          color: _isHovering[i] ? Colors.blue : Colors.white, fontSize: 22),
    ),
  );
}

Padding getPadding() {
  return Padding(
    padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
    child: Divider(
      color: Colors.blueGrey.shade400,
      thickness: 2,
    ),
  );
}
