import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/homepage.dart';
import 'package:my_portfolio/screens/myworks.dart';
import 'package:my_portfolio/screens/skillandservices.dart';
import '../../screens/aboutme.dart';
import '../../screens/contactme.dart';

final List _isHovering = [
  false,
  false,
  false,
  true,
];

class TopBarContents5 extends StatefulWidget {
  final double opacity;

  const TopBarContents5(this.opacity, {Key? key}) : super(key: key);

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents5> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      color: Colors.lightBlueAccent.withOpacity(1),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: screenSize.width / 10,
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.home,
                      size: 30,
                      color: Colors.white54,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, HomePage.id);
                    },
                  ),
                  const Spacer(),
                  getHeaderText(Icons.person, 'About Me', 0, (value) {
                    setState(() {
                      value ? _isHovering[0] = true : _isHovering[0] = false;
                    });
                  }, () {
                    Navigator.pushNamed(context, AboutMe.id);
                  }),
                  const Spacer(),
                  getHeaderText(Icons.settings, 'Skills & Services', 1,
                      (value) {
                    setState(() {
                      value ? _isHovering[1] = true : _isHovering[1] = false;
                    });
                  }, () {
                    Navigator.pushNamed(context, SkillsAndServices.id);
                  }),
                  const Spacer(),
                  getHeaderText(Icons.work, 'My Works', 2, (value) {
                    setState(() {
                      value ? _isHovering[2] = true : _isHovering[2] = false;
                    });
                  }, () {
                    Navigator.pushNamed(context, MyWorks.id);
                  }),
                  const Spacer(),
                  getHeaderText(Icons.message, 'Contact Me', 3, (value) {
                    setState(() {
                      value ? _isHovering[3] = true : _isHovering[3] = true;
                    });
                  }, () {
                    Navigator.pushNamed(context, ContactMe.id);
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget getHeaderText(IconData icon, String text, int i, Function(bool) onhover,
    Function() ontapped) {
  return InkWell(
    onHover: onhover,
    onTap: ontapped,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Icon(
              icon,
              size: 20,
              color: Colors.white54,
            ),
            Text(
              text,
              style: TextStyle(
                  color: _isHovering[i]
                      ? const Color(0xFF077bd7)
                      : const Color(0xFF077bd7),
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
          width: 20,
        ),
        Visibility(
          maintainAnimation: true,
          maintainState: true,
          maintainSize: true,
          visible: _isHovering[i],
          child: Container(
            height: 2,
            width: 20,
            color: Colors.blue,
          ),
        )
      ],
    ),
  );
}
