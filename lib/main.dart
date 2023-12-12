import 'package:flutter/material.dart';
import 'package:twitterclone/src/ui/home/home.dart';
import 'package:twitterclone/src/ui/login_page.dart';
import 'package:twitterclone/src/ui/new_messages_page.dart';
import 'package:twitterclone/src/ui/profil_page.dart';
import 'package:twitterclone/src/ui/register_page.dart';

import 'package:twitterclone/src/ui/search_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(


        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
