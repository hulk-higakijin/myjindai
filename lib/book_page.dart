import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class bookPage extends StatefulWidget {
  const bookPage({ Key? key }) : super(key: key);

  @override
  State<bookPage> createState() => _bookPageState();
}

class _bookPageState extends State<bookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SvgPicture.asset(
              'assets/svg/book.svg',
              semanticsLabel: 'book',
              width: 25,
              height: 25,
              color: Colors.white,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: const Text('参考書交換所')
            )
          ],
        ),
        backgroundColor: Colors.blue[900],
      ),
    );
  }
}