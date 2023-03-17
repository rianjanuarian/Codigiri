import 'package:first_assessment/ui/main_page.dart';
import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MainPage()),
                );
              },
              child: const Text("User 1")),
          ElevatedButton(onPressed: () {}, child: const Text("User 2"))
        ],
      ),
    );
  }
}
