import 'package:flutter/material.dart';
import 'package:myjindai/components/header.dart';

class chatPage extends StatefulWidget {
  const chatPage({ Key? key }) : super(key: key);

  @override
  State<chatPage> createState() => _chatPageState();
}

class _chatPageState extends State<chatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header('チャット', 'chat')
    );
  }
}