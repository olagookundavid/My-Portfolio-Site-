import 'package:flutter/material.dart';
import 'package:my_portfolio/wigdets/bottombar.dart';
import 'package:my_portfolio/wigdets/hometextbody.dart';
import '../wigdets/menudrawer.dart';
import '../wigdets/topbars/topbar.dart';

class HomePage extends StatefulWidget {
  static const id = 'homepage';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                Icons.home,
                size: 40,
                color: Colors.white54,
              ),
            )
          : PreferredSize(
              preferredSize: Size(screenwidth, 70),
              child: const TopBarContents(0),
            ),
      drawer: const MenuDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            screenwidth < 800 ? const HomeBody() : const HomeBody2(),
            SizedBox(height: screenheight / 6),
            const Align(
              alignment: Alignment.bottomCenter,
              child: BottomBar(),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
