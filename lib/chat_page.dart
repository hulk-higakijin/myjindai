import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class chatPage extends StatefulWidget {
  const chatPage({ Key? key }) : super(key: key);

  @override
  State<chatPage> createState() => _chatPageState();
}

class _chatPageState extends State<chatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SvgPicture.asset(
              'assets/svg/chat.svg',
              semanticsLabel: 'chat',
              width: 25,
              height: 25,
              color: Colors.white,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: const Text('チャット')
            )
          ],
        ),
        backgroundColor: Colors.blue[900],
      ),
    );
  }
}