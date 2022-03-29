// ignore_for_file: deprecated_member_use

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myjindai/alert_page.dart';
import 'package:myjindai/book_page.dart';
import 'package:myjindai/chat_page.dart';
import 'package:myjindai/class_page.dart';
import 'package:myjindai/link_page.dart';
import 'package:myjindai/news_page.dart';
import 'package:myjindai/question_page.dart';
import 'package:myjindai/recruitment_page.dart';

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
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: CupertinoPageTransitionsBuilder(), // iOS風
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
            TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
          },
        ),
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

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => _scaffoldKey.currentState!.openDrawer(),
          icon: const Icon(Icons.person_search),
        ),
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
            leading: SvgPicture.asset(
              'assets/svg/academy.svg',
              semanticsLabel: 'academy',
              width: 25,
              height: 25,
              color: Colors.grey[600],
            ),
            title: const Text("講義データベース"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(
                builder: (context) =>  const classPage()
              ));
            },
          ),
          ListTile(
            leading: SvgPicture.asset(
              'assets/svg/question.svg',
              semanticsLabel: 'question',
              width: 25,
              height: 25,
              color: Colors.grey[600],
            ),
            title: const Text("質問コーナー"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(
                builder: (context) =>  const questionPage()
              ));
            },
          ),
          ListTile(
            leading: SvgPicture.asset(
              'assets/svg/recruitment.svg',
              semanticsLabel: 'recruitment',
              width: 25,
              height: 25,
              color: Colors.grey[600],
            ),
            title: const Text("メンバー募集"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(
                builder: (context) =>  const recruitmentPage()
              ));
            },
          ),
          ListTile(
            leading: SvgPicture.asset(
              'assets/svg/chat.svg',
              semanticsLabel: 'chat',
              width: 25,
              height: 25,
              color: Colors.grey[600],
            ),
            title: const Text("チャット"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(
                builder: (context) =>  const chatPage()
              ));
            },
          ),
          ListTile(
            leading: SvgPicture.asset(
              'assets/svg/book.svg',
              semanticsLabel: 'book',
              width: 25,
              height: 25,
              color: Colors.grey[600],
            ),
            title: const Text("参考書交換所"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(
                builder: (context) =>  const bookPage()
              ));
            },
          ),
          ListTile(
            leading: SvgPicture.asset(
              'assets/svg/newspaper.svg',
              semanticsLabel: 'newspaper',
              width: 25,
              height: 25,
              color: Colors.grey[600],
            ),
            title: const Text("ニュース"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(
                builder: (context) =>  const newsPage()
              ));
            },
          ),
          ListTile(
            leading: SvgPicture.asset(
              'assets/svg/internet.svg',
              semanticsLabel: 'internet',
              width: 25,
              height: 25,
              color: Colors.grey[600],
            ),
            title: const Text("リンク集"),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(
                builder: (context) =>  const linkPage()
              ));
            },
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
              semanticsLabel: 'heart',
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
