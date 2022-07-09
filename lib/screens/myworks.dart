import 'package:flutter/material.dart';
import 'package:my_portfolio/wigdets/myworksbody.dart';
import 'package:my_portfolio/wigdets/topbars/topbar4.dart';
import '../wigdets/bottombar.dart';
import '../wigdets/menudrawer.dart';

class MyWorks extends StatefulWidget {
  static const id = 'myworks';
  const MyWorks({Key? key}) : super(key: key);

  @override
  State<MyWorks> createState() => _MyWorksState();
}

class _MyWorksState extends State<MyWorks> {
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
                Icons.work,
                size: 30,
                color: Colors.white54,
              ),
            )
          : PreferredSize(
              preferredSize: Size(screenwidth, 70),
              child: const TopBarContents4(0),
            ),
      drawer: const MenuDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MyWorkBody(),
            SizedBox(height: screenheight / 10),
            const Align(
              alignment: Alignment.bottomCenter,
              child: BottomBar(),
            ),
          ],
        ),
      ),
    );
  }
}
