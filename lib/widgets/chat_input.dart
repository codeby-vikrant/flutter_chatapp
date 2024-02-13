import 'package:flutter/material.dart';
import 'package:flutter_study/models/chat_message_entity.dart';

class ChatInput extends StatelessWidget {
  final Function(ChatMessageEntity) onSubmit;

  ChatInput({super.key, required this.onSubmit});

  final chatMessageController = TextEditingController();

  void onSendButtonPressed() {
    print("Chat Message :${chatMessageController.text}");

    final newChatMessage = ChatMessageEntity(
        text: chatMessageController.text,
        id: '101',
        createdAt: DateTime.now().microsecondsSinceEpoch,
        author: Author(username: "vicky10"));
    onSubmit(newChatMessage);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Text('Nah this does nothing!, because i dont know how to'),
                      );
                    });
              },
              icon: Icon(
                Icons.add,
                color: Colors.white,
              )),
          Expanded(
              child: TextField(
            keyboardType: TextInputType.multiline,
            maxLines: 5,
            minLines: 1,
            controller: chatMessageController,
            textCapitalization: TextCapitalization.sentences,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: "Type Your Message",
              hintStyle: TextStyle(color: Colors.blueGrey),
              border: InputBorder.none,
            ),
          )),
          IconButton(
              onPressed: onSendButtonPressed,
              icon: Icon(
                Icons.send,
                color: Colors.white,
              ))
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
    );
  }
}
