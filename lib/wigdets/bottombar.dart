import 'package:flutter/material.dart';
import 'infotext.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);
  static const Color gradientStartColor = Color(0xff11998e);
  static const Color gradientEndColor = Color(0xff0575E6);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
        gradient: LinearGradient(
            colors: [gradientStartColor, gradientEndColor],
            begin: FractionalOffset(0.2, 0.2),
            end: FractionalOffset(1.0, 1.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      padding: MediaQuery.of(context).size.width < 800
          ? const EdgeInsets.symmetric(vertical: 30, horizontal: 8)
          : const EdgeInsets.all(30),
      child: MediaQuery.of(context).size.width < 800
          ? Column(
              children: [
                Column(
                  children: const [
                    InfoText(
                      type: 'Email ',
                      text: 'erijesudo@gmail.com',
                    ),
                    SizedBox(height: 10),
                    InfoText(
                      type: 'Phone Number ',
                      text: '(+234) 708-5569-828',
                    ),
                    SizedBox(height: 10),
                    InfoText(
                      type: 'Address ',
                      text: 'plot 4, olowofela magboro, ogun state',
                    ),
                    SizedBox(height: 5),
                  ],
                ),
                const SizedBox(height: 10),
                const Divider(color: Colors.white),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Copyright © 2022 | David-OH',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            )
          : Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    InfoText(
                      type: 'Email',
                      text: 'erijesudo@gmail.com',
                    ),
                    SizedBox(height: 10),
                    InfoText(
                      type: 'Phone Number ',
                      text: '(+234) 708-5569-828',
                    ),
                    SizedBox(height: 10),
                    InfoText(
                      type: 'Address',
                      text: 'plot 4, olowofela magboro, ogun state',
                    )
                  ],
                ),
                const Divider(
                  color: Colors.white,
                ),
                const SizedBox(height: 20),
                const Align(
                  child: Text(
                    'Copyright © 2022 | David-OH',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
