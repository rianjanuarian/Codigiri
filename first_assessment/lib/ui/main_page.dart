import 'package:first_assessment/model/user.dart';
import 'package:first_assessment/ui/chat_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chat App')),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: userList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChatPage(
                                    name: userList[index].name,
                                    userModel: userList[index],
                                    photo: userList[index].photo,
                                  )),
                        );
                      },
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  NetworkImage(userList[index].photo),
                            ),
                          ),
                          Text(userList[index].name)
                        ],
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
