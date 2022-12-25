import 'package:chat_bot/package/Stringlar.dart';
import 'package:flutter/material.dart';

class MyAdmin extends StatefulWidget {
  @override
  State<MyAdmin> createState() => _MyAdminState();
}

class _MyAdminState extends State<MyAdmin> {
  List<Stringlar> information = [
    Stringlar(username: "burkhan", password: "1234"),
    Stringlar(username: "sheralme", password: "5678"),
    Stringlar(username: "muhammadali", password: "9012"),
    Stringlar(username: "akbarshohk", password: "3456")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[300],
        appBar: AppBar(
          title: Text(
            "Admin",
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
            ),
          ),
          centerTitle: true,
          elevation: 10.0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: information
              .map((abs) => Text(
                    "\nUsername: ${abs.username}\nPassword: ${abs.password}\n\n\n",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ))
              .toList(),
        ));
  }
}
