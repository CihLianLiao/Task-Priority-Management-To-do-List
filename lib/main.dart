import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:priority/for_page1/models1.dart';
import 'package:priority/for_page2/models2.dart';
import 'package:priority/for_page3/models3.dart';
import 'package:priority/for_page4/models4.dart';
import 'package:priority/for_page1/task_page1.dart';
import 'package:priority/for_page2/task_page2.dart';
import 'package:priority/for_page3/task_page3.dart';
import 'package:priority/for_page4/task_page4.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Models1()),
        ChangeNotifierProvider(create: (_) => Models2()),
        ChangeNotifierProvider(create: (_) => Models3()),
        ChangeNotifierProvider(create: (_) => Models4()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //↓↓↓Remove the DEBUG banner↓↓↓
      debugShowCheckedModeBanner: false,
      initialRoute: '/four',
      routes: {
        '/one': ((context) => TaskPage1()),
        '/two': ((context) => TaskPage2()),
        '/three': ((context) => TaskPage3()),
        '/four': ((context) => TaskPage4()),
      },
    );
  }
}
