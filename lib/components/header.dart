import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class header extends StatelessWidget implements PreferredSizeWidget {

  String title;
  String icon;
  header(this.title, this.icon);

  @override
  Size get preferredSize => const Size.fromHeight(55);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          SvgPicture.asset(
            'assets/svg/$icon.svg',
            semanticsLabel: icon,
            width: 25,
            height: 25,
            color: Colors.white,
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Text(title)
          )
        ],
      ),
      backgroundColor: Colors.blue[900],
    );
  }
}