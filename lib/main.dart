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

    Map lists = {
      0: { 'icon':'academy', 'title':'講義データベース', 'nextPage': const classPage() },
      1: { 'icon':'question', 'title':'質問コーナー', 'nextPage': const questionPage() },
      2: { 'icon': 'recruitment', 'title':'メンバー募集', 'nextPage': const recruitmentPage() },
      3: { 'icon': 'chat', 'title':'チャット', 'nextPage': const chatPage() },
      4: { 'icon': 'book', 'title':'参考書交換所', 'nextPage': const bookPage() },
      5: { 'icon': 'newspaper', 'title':'ニュース', 'nextPage': const newsPage() },
      6: { 'icon': 'internet', 'title':'リンク集', 'nextPage': const linkPage() },
      // 7: { 'icon': '歯車', 'title': '設定', 'nextPage': const settingsPage() }
    };

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
          child: Column(
            children: [
              const UserAccountsDrawerHeader(
                accountName: Text("User Name"),
                accountEmail: Text("User Email"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage("https://pbs.twimg.com/profile_images/885510796691689473/rR9aWvBQ_400x400.jpg"),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: SvgPicture.asset(
                      'assets/svg/${lists[index]['icon']}.svg',
                      semanticsLabel: lists[index]['icon'],
                      width: 25,
                      height: 25,
                      color: Colors.grey[600],
                    ),
                      title: Text(lists[index]['title']),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => lists[index]['nextPage']
                        ));
                      },
                    );
                  },
                  itemCount: lists.length,
                ),
              ),
            ],
          ),
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
