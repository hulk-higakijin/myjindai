import 'package:flutter/material.dart';

import 'components/header.dart';

class newsPage extends StatefulWidget {
  const newsPage({ Key? key }) : super(key: key);

  @override
  State<newsPage> createState() => _newsPageState();
}

class _newsPageState extends State<newsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header('ニュース', 'newspaper')
    );
  }
}