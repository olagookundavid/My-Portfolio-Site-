import 'package:flutter/material.dart';
import 'package:my_portfolio/wigdets/skillsbody.dart';
import 'package:my_portfolio/wigdets/topbars/topbar3.dart';
import '../wigdets/bottombar.dart';
import '../wigdets/menudrawer.dart';

class SkillsAndServices extends StatefulWidget {
  static const id = 'skillesandservices';
  const SkillsAndServices({Key? key}) : super(key: key);

  @override
  State<SkillsAndServices> createState() => _SkillsAndServicesState();
}

class _SkillsAndServicesState extends State<SkillsAndServices> {
  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: screenwidth < 800
          ? AppBar(
              centerTitle: true,
              iconTheme: const IconThemeData(color: Colors.blue),
              elevation: 0,
              backgroundColor: Colors.lightBlueAccent,
              title: const Icon(
                Icons.settings,
                size: 30,
                color: Colors.white54,
              ),
            )
          : PreferredSize(
              preferredSize: Size(screenwidth, 70),
              child: const TopBarContents3(0),
            ),
      drawer: const MenuDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SkillsAndServicesBody(width: screenwidth),
            const SizedBox(
              height: 15,
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: BottomBar(),
            ),
          ],
        ),
      ),
      // backgroundColor: Colors.black,
    );
  }
}
