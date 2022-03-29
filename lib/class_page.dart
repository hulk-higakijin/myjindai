import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class classPage extends StatefulWidget {
  const classPage({ Key? key }) : super(key: key);

  @override
  State<classPage> createState() => _classPageState();
}

class _classPageState extends State<classPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SvgPicture.asset(
              'assets/svg/academy.svg',
              semanticsLabel: 'academy',
              width: 25,
              height: 25,
              color: Colors.white,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: const Text('講義データベース')
            )
          ],
        ),
        backgroundColor: Colors.blue[900],
      ),
      // body: ,
    );
  }
}