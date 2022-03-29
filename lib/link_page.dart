import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class linkPage extends StatefulWidget {
  const linkPage({ Key? key }) : super(key: key);

  @override
  State<linkPage> createState() => _linkPageState();
}

class _linkPageState extends State<linkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SvgPicture.asset(
              'assets/svg/internet.svg',
              semanticsLabel: 'internet',
              width: 25,
              height: 25,
              color: Colors.white,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: const Text('リンク集')
            )
          ],
        ),
        backgroundColor: Colors.blue[900],
      ),
    );
  }
}