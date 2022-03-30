import 'package:flutter/material.dart';
import 'package:myjindai/components/Header.dart';

class questionPage extends StatefulWidget {
  const questionPage({ Key? key }) : super(key: key);

  @override
  State<questionPage> createState() => _questionPageState();
}

class _questionPageState extends State<questionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header('質問コーナー', 'question'),
    );
  }
}