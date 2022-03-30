import 'package:flutter/material.dart';

import 'components/header.dart';

class bookPage extends StatefulWidget {
  const bookPage({ Key? key }) : super(key: key);

  @override
  State<bookPage> createState() => _bookPageState();
}

class _bookPageState extends State<bookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header('参考書交換所', 'book')
    );
  }
}