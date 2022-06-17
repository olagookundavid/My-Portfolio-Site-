import 'package:flutter/material.dart';
import '../wigdets/aboutmebody.dart';
import '../wigdets/bottombar.dart';
import '../wigdets/menudrawer.dart';
import '../wigdets/topbars/topbar2.dart';

class AboutMe extends StatefulWidget {
  static const id = 'aboutme';
  const AboutMe({Key? key}) : super(key: key);

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: screenwidth < 800
          ? AppBar(
              centerTitle: true,
              iconTheme: const IconThemeData(color: Colors.blue),
              elevation: 0,
              backgroundColor: Colors.lightBlueAccent, //.withOpacity(_opacity),
              title: const Icon(
                Icons.person,
                size: 30,
                color: Colors.white54,
              ),
            )
          : PreferredSize(
              preferredSize: Size(screenwidth, 70),
              child: const TopBarContents2(0),
            ),
      drawer: const MenuDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AboutmeTextbody(),
            SizedBox(height: screenheight / 5),
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
