import 'package:chat_bot/model/chat_model.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ChatModel> textList = [];
  TextEditingController editingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chatting with bot"),
        elevation: 10,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            size: 35,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/chat.jpg"),
            )),
        child: ListView.builder(
          itemCount: textList.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(MediaQuery.of(context).size.height * 0.02),
              alignment: textList[index].id
                  ? AlignmentDirectional.centerEnd
                  : AlignmentDirectional.centerStart,
              child: Container(
                padding:
                EdgeInsets.all(MediaQuery.of(context).size.width * 0.025),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                ),
                child: Text(
                  textList[index].text,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*0.05),
          SizedBox(width: MediaQuery.of(context).size.width * 0.05),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.75,
            child: TextFormField(
              controller: editingController,
              style: const TextStyle(color: Colors.white),
              maxLines: 1,
              decoration: InputDecoration(
                fillColor: Colors.blue,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.blue, width: 2),
                ),
              ),
            ),
          ),
          GestureDetector(
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: MediaQuery.of(context).size.width * 0.06,
              child: const Icon(Icons.send,
              color: Colors.white,
              ),
            ),
            onTap: () {
              setState(() {
                textList.add(ChatModel(id: true, text: editingController.text));
                tekshirFunc(editingController.text.toLowerCase());
                editingController.clear();
              });
            },
          ),
        ],
      ),
    );
  }

  tekshirFunc(String text) {
    if (text == "hi") {
      bot("Hello");
    } else if (text == "hello") {
      bot("Hi");
    } else  if (text== "how are you?" || text == "how are you" || text == "how are yu"){
      bot("I'm good Thank :). What about you?");
    } else if(text=="good"|| text=="perfect"){
      bot("I'm very happy from that :)");
    } else if(text=="who is made you?"|| text=="owner of this bot"){
      bot("4 people made me. Who are they?\n1.Burkhon \n2.Muhammadli\n3.Akbarshokh\n4.Sherali");
    }else if(text=="who is made you?"|| text=="owner of this bot"){
      bot("4 people made me. Who are they?\n1.Burkhon \n2.Muhammadli\n3.Akbarshokh\n4.Sherali");
    } else if(text=="who are you"|| text=="what are you"){
      bot("I'm  AI chat bot. Which was increase to humand mind!");
    } else if(text=="what is your name"|| text=="your name"){
      bot("My name is UZAI, which means first UZ two letters are our country, and second AI two letters are Artificial intelegence! ");
    } else if(text=="what your purpose"|| text=="goal"){
      bot("How people use AI technologies. What their feelings");
    } else if(text=="what is a data"|| text=="data"){
      bot("Today good day. And I don't have any information about this day! Right now I'm offline mod, after some time I will find information in internet");
    } else if(text=="fuck"|| text=="bad words"){
      bot("Hello mother fucker");
    } else{
      bot("I'm offline mood. Plz wait to connect with internet or close app!");
    }
  }

  bot(String text) {
    Future.delayed(Duration(seconds: 2)).then((value) {
      setState(() {
        textList.add(ChatModel(id: false, text: text));
      });
    });
  }
}
