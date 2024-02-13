import 'package:flutter/material.dart';
import 'package:flutter_study/chat_page.dart';
import 'package:flutter_study/login_page.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Chat App',
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.black)),
      home: LoginPage(),
      routes: {'/chat': (context) => ChatPage()},
    );
  }
}
