import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final Alignment alignment;
  const ChatBubble({super.key, required this.alignment, required this.message});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Container(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '$message',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqaDsKdwVRbU_radzACmCYwVNKeXhxQ8E3lYgJUifDMA&s',
              height: 200,
            )
          ],
        ),
        margin: EdgeInsets.all(50),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12)),
        ),
      ),
    );;
  }
}
