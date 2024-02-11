import 'package:flutter/material.dart';
import 'package:flutter_study/chat_input.dart';
import 'package:flutter_study/widgets.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final username = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('Hi! $username', textAlign: TextAlign.center,),
        backgroundColor: Colors.transparent,
        elevation: 1,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, '/');
                print('Icons Pressed');
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ChatBubble(
                      alignment: index % 2 == 0
                          ? Alignment.centerLeft
                          : Alignment.centerRight,
                      message: "Hello Vikrant");
                }),
          ),
          ChatInput(),
        ],
      ),
    );
  }
}
