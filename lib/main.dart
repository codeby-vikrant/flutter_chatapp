import 'package:flutter/material.dart';
import 'package:flutter_study/chat_page.dart';
import 'package:flutter_study/login_page.dart';
import 'package:flutter_study/services/auth_services.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(Provider(create: (BuildContext context) => AuthService(),
  child: ChatApp()));
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
