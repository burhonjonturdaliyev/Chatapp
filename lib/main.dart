// ignore_for_file: unused_element

import 'package:chat_bot/pages/adminpanel.dart';
import 'package:chat_bot/pages/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    debugShowCheckedModeBanner: false,
    // home: MyAdmin(),
    routes: {
      "/adminPanel": (context) => MyAdmin(),
    },

    // home: admin(),
    home: welcomepage(),
    //home: loginpage(),
    //home: chatapp(),
  ));
}
