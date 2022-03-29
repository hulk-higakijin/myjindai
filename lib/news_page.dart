import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class newsPage extends StatefulWidget {
  const newsPage({ Key? key }) : super(key: key);

  @override
  State<newsPage> createState() => _newsPageState();
}

class _newsPageState extends State<newsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SvgPicture.asset(
              'assets/svg/newspaper.svg',
              semanticsLabel: 'newspaper',
              width: 25,
              height: 25,
              color: Colors.white,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: const Text('ニュース')
            )
          ],
        ),
        backgroundColor: Colors.blue[900],
      ),
    );
  }
}