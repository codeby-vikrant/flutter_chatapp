import 'package:flutter/material.dart';


class ChatInput extends StatelessWidget {
   ChatInput({super.key});

  final chatMessageController = TextEditingController();

  void onSendButtonPressed()
  {
    print("Chat Message :${chatMessageController.text}");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                color: Colors.white,
              )),
          Expanded(child: TextField(
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
