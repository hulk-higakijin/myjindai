import 'package:flutter/material.dart';

class alertPage extends StatefulWidget {
  const alertPage({ Key? key }) : super(key: key);

  @override
  State<alertPage> createState() => _alertPageState();
}

class _alertPageState extends State<alertPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('通知'),
        backgroundColor: Colors.blue[900],
      ),
      body: Column(
        children: const [
          Text('ここはalertPageです。')
        ]
      ),
    );
  }
}