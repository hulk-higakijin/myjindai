import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class questionPage extends StatefulWidget {
  const questionPage({ Key? key }) : super(key: key);

  @override
  State<questionPage> createState() => _questionPageState();
}

class _questionPageState extends State<questionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SvgPicture.asset(
              'assets/svg/question.svg',
              semanticsLabel: 'question',
              width: 25,
              height: 25,
              color: Colors.white,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: const Text('質問コーナー')
            )
          ],
        ),
        backgroundColor: Colors.blue[900],
      ),
    );
  }
}