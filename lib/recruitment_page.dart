import 'package:flutter/material.dart';
import 'package:myjindai/components/Header.dart';

class recruitmentPage extends StatefulWidget {
  const recruitmentPage({ Key? key }) : super(key: key);

  @override
  State<recruitmentPage> createState() => _recruitmentPageState();
}

class _recruitmentPageState extends State<recruitmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header('メンバー募集', 'recruitment'),
    );
  }
}