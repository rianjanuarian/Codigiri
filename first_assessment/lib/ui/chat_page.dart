import 'package:first_assessment/model/user.dart';
import 'package:flutter/material.dart';

import 'package:chat_bubbles/chat_bubbles.dart';

class ChatPage extends StatefulWidget {
  String name;
  String photo;
  UserModel userModel;
  ChatPage(
      {super.key,
      required this.userModel,
      required this.name,
      required this.photo});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(widget.photo),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(widget.name),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: widget.userModel.userMessage.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: BubbleSpecialOne(
                          text: widget.userModel.message[index],
                          color: const Color(0xFF1B97F3),
                          isSender: false,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: BubbleSpecialOne(
                          text: widget.userModel.userMessage[index],
                          color: const Color(0xFFE8E8EE),
                        ),
                      ),
                    ]);
                  })),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.81,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(width: 2, color: Colors.blue),
                  ),
                  child: TextField(
                    controller: _textFieldController,
                    decoration: const InputDecoration(
                        hintText: 'Enter some text', border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.10,
                  height: MediaQuery.of(context).size.height * 0.10,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _textFieldController.clear();
                      });
                    },
                    style:
                        ElevatedButton.styleFrom(shape: const CircleBorder()),
                    child: const Icon(Icons.send),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
