import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hi! Vikrant'),
        backgroundColor: Colors.transparent,
        elevation: 1,
        actions: [
          IconButton(
              onPressed: () {
                print('Icons Pressed');
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Hi this is your message',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpH9sMSxuT4HKY-jYoCetIWrAM-NsP6Jjwlw&s',
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
          Container(
            padding: EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Hi this is your message',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpH9sMSxuT4HKY-jYoCetIWrAM-NsP6Jjwlw&s',
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
          Container(
            padding: EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Hi this is your message',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpH9sMSxuT4HKY-jYoCetIWrAM-NsP6Jjwlw&s',
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
          Container(
            height: 70,
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.send,
                      color: Colors.white,
                    ))
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
          )
        ],
      ),
    );
  }
}
