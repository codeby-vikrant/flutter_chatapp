import 'package:flutter/material.dart';
import 'package:flutter_study/widgets/chat_input.dart';
import 'package:flutter_study/widgets/chat_bubble.dart';

import 'models/chat_message_entity.dart';

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
                      entity: ChatMessageEntity(
                      id: "1234",
                      text: "Hello This is Vikrant!",
                      createdAt: DateTime.now().microsecondsSinceEpoch,
                      author: Author(username: 'vicky01'),
                  ));
                }),
          ),
          ChatInput(),
        ],
      ),
    );
  }
}
