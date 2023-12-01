import 'package:flutter/material.dart';
import 'package:my_profile/ExperiencePage.dart';
import 'package:my_profile/HobbyPage.dart';
import 'package:my_profile/HomePage.dart';
import 'package:my_profile/SkillPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/skill': (context) => SkillPage(),
        '/experience': (context) => ExperiencePage(),
        '/hobby': (context) => HobbyPage()
      },
    );
  }
}
