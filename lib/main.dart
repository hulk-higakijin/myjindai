// ignore_for_file: deprecated_member_use

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myjindai/alert_page.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'MyApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // var _city = '';

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blue[900],
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) =>  const alertPage()
              ));
            },
            icon: const Icon(
              IconData(0xeb48, fontFamily: 'MaterialIcons'),
              color: Colors.white,
            )
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text("User Name"),
            accountEmail: Text("User Email"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage("https://pbs.twimg.com/profile_images/885510796691689473/rR9aWvBQ_400x400.jpg"),
            ),
          ),
          ListTile(
            leading: const Icon(IconData(0xf107, fontFamily: 'MaterialIcons')),
            title: const Text("講義データベース"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) =>  const alertPage() //一時的にアラートページにしている
              ));
            },
          ),
          ListTile(
            leading: SvgPicture.asset(
              'assets/svg/question.svg',
              semanticsLabel: 'shopping',
              width: 25,
              height: 25,
              color: Colors.grey[600],
            ),
            title: const Text("質問コーナー"),
          ),
          ListTile(
            leading: SvgPicture.asset(
              'assets/svg/recruitment.svg',
              semanticsLabel: 'shopping',
              width: 25,
              height: 25,
              color: Colors.grey[600],
            ),
            title: const Text("メンバー募集"),
          ),
          ListTile(
            leading: SvgPicture.asset(
              'assets/svg/chat.svg',
              semanticsLabel: 'shopping',
              width: 25,
              height: 25,
              color: Colors.grey[600],
            ),
            title: const Text("チャット"),
          ),
          ListTile(
            leading: SvgPicture.asset(
              'assets/svg/book.svg',
              semanticsLabel: 'shopping',
              width: 25,
              height: 25,
              color: Colors.grey[600],
            ),
            title: const Text("参考書交換所"),
          ),
          ListTile(
            leading: SvgPicture.asset(
              'assets/svg/newspaper.svg',
              semanticsLabel: 'shopping',
              width: 25,
              height: 25,
              color: Colors.grey[600],
            ),
            title: const Text("ニュース"),
          ),
          ListTile(
            leading: SvgPicture.asset(
              'assets/svg/internet.svg',
              semanticsLabel: 'shopping',
              width: 25,
              height: 25,
              color: Colors.grey[600],
            ),
            title: const Text("リンク集"),
          ),
          const ListTile(
            leading: Icon(IconData(0xe57f, fontFamily: 'MaterialIcons')),
            title: Text("設定"),
          ),
        ]),
      ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            SvgPicture.asset(
              'assets/svg/heart.svg',
              semanticsLabel: 'shopping',
              width: 50,
              height: 50,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
        backgroundColor: Colors.blue[900],
      ),
    );
  }
}
