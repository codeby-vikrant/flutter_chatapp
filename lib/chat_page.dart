import 'package:flutter/material.dart';
import 'package:flutter_study/widgets/chat_input.dart';
import 'package:flutter_study/widgets/chat_bubble.dart';

import 'models/chat_message_entity.dart';

class ChatPage extends StatelessWidget {
   ChatPage({super.key});

  List<ChatMessageEntity> _messages = [
    ChatMessageEntity(
        author: Author(username: "vicky10"),
        createdAt: 2131231242,
        id: '1',
        text: 'First text'),
    ChatMessageEntity(
        author: Author(username: "vicky10"),
        createdAt: 2131231242,
        id: '1',
        text: 'Second text',
        imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOkZdPituG-u78CL9TsJ7kP-oluyq1-7-oRLU46HCjrw&s'),
    ChatMessageEntity(
      author: Author(username: "Vedant"),
      createdAt: 2131231242,
      id: '1',
      text: 'Third text',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final username = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hi! $username',
          textAlign: TextAlign.center,
        ),
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
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  return ChatBubble(
                      alignment: _messages[index].author.username == 'vicky10'
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                      entity: _messages[index]);
                }),
          ),
          ChatInput(),
        ],
      ),
    );
  }
}
