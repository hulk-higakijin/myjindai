import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({ Key? key }) : super(key: key);


  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController emailController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ログイン'),
        backgroundColor: Colors.blue[900],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'ようこそ',
                style: TextStyle(fontSize: 20),
              )
            ),
            Row(
              children: const <Widget>[
                Text('メールアドレスに認証リンクを送信します。'),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
            Align(
              child: ElevatedButton(
                child: const Text('送信'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue[900],
                  onPrimary: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
          ],
        )
      )
    );
  }
}