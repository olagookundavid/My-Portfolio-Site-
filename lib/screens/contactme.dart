import 'package:flutter/material.dart';
import 'package:my_portfolio/wigdets/contactmebody.dart';
import 'package:my_portfolio/wigdets/topbars/topbar5.dart';
import '../wigdets/bottombar.dart';
import '../wigdets/menudrawer.dart';

class ContactMe extends StatefulWidget {
  static const id = 'contactme';
  const ContactMe({Key? key}) : super(key: key);

  @override
  State<ContactMe> createState() => _ContactMeState();
}

class _ContactMeState extends State<ContactMe> {
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
              backgroundColor: Colors.lightBlueAccent,
              title: const Icon(
                Icons.message,
                size: 30,
                color: Colors.white54,
              ),
            )
          : PreferredSize(
              preferredSize: Size(screenwidth, 70),
              child: const TopBarContents5(0),
            ),
      drawer: const MenuDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ContactMeBody(),
            SizedBox(height: screenheight / 6),
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
