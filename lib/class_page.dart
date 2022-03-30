import 'package:flutter/material.dart';
import 'package:myjindai/components/header.dart';

class classPage extends StatefulWidget {
  const classPage({ Key? key }) : super(key: key);

  @override
  State<classPage> createState() => _classPageState();
}

class _classPageState extends State<classPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header('講義データベース', 'academy'),
    );
  }
}