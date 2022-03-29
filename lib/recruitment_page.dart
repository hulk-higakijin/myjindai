import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class recruitmentPage extends StatefulWidget {
  const recruitmentPage({ Key? key }) : super(key: key);

  @override
  State<recruitmentPage> createState() => _recruitmentPageState();
}

class _recruitmentPageState extends State<recruitmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SvgPicture.asset(
              'assets/svg/recruitment.svg',
              semanticsLabel: 'recruitment',
              width: 25,
              height: 25,
              color: Colors.white,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: const Text('メンバー募集')
            )
          ],
        ),
        backgroundColor: Colors.blue[900],
      ),
    );
  }
}