import 'package:flutter/material.dart';

class chatpage extends StatelessWidget {
  const chatpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Chatting with bot"),
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_circle_left_outlined,
              size: 35,
              color: Colors.white,
            ),

          ),
        ),
      ),

    );
  }
}
