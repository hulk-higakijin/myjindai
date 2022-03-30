import 'package:flutter/material.dart';
import 'package:myjindai/components/Header.dart';

class linkPage extends StatefulWidget {
  const linkPage({ Key? key }) : super(key: key);

  @override
  State<linkPage> createState() => _linkPageState();
}

class _linkPageState extends State<linkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header('リンク集', 'internet')
    );
  }
}