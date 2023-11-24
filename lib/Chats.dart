import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: List.generate(
        10,
        (index) => ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
            title: Text('Anu'),
            subtitle: Text('2 minutes ago'),
            trailing: Text(
              '2.30Am',
              style: TextStyle(color: Colors.green),
            )),
      )),
    );
  }
}
