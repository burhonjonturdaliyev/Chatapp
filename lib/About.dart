import 'package:flutter/material.dart';

class aboutpage extends StatelessWidget {
  const aboutpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("About"),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_circle_left_outlined,
              size: 35,
              color: Colors.white,
            ),
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Abstract:",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.lightBlue),
                  ),

                  // SizedBox(height: 4,),
                  //  Image(
                  //   image: Image.asset("Image/1.png"),
                  // ),

                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "A Chabot is computer software that can simulate a conversation using textual in mobile. The basis of chat bots is artificial intelligence, which analyses a customer's data and blends the response with them. AI-powered bots can take over a variety of duties since they are considerably more powerful—and can execute numerous tasks at once. Natural language processing enables a bot to converse in the most natural manner possible. A balanced blend of innovative technology and human intervention is the optimal user-Chabot connection.",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue[600]),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "A review on Chat Interface",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.lightBlue),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "This unit is the front end of the system. It is responsible for collecting the user queries from the user which are the input to the system. It is also responsible for displaying the system generated results to the user. Therefore, it can be said that the chat interface is the face of the system through which the entire communication takes place. It is the mediator of conversation between the system and the user. The query that user fires on the chat interface is passed on to the chatting backend which acts message delivering system between the Chat interface and the Machine Learning Layer. This interface can be accessed either as a website or as a smart phone app. The type of interface depends on the requirements of the user that are to be satisfied by the system. If the system is accessed from a smartphone, the interface will be in the form of an app and if the system is accessed from a website, then the interface will be in the form of a website. For building apps on the smartphone, it will require to use android for android phones or Swift for iOS. In this case, only the interfacing platform will be programmed on android and the complete backend processing of the system will take place on a server on which the system will be deployed.",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue[600]),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "LITERATURE SURVEY",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.lightBlue),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Alan Turing in 1950 proposed the Turing Test (“Can machines think?”), and it was at that time that the idea of a chatbot was popularized. The first known chatbot was Eliza, developed in 1966, whose purpose was to act as a psychotherapist returning the user utterances in a question form. It used simple pattern matching and a template-based response mechanism. Its conversational ability was not good, but it was enough to confuse people at a time when they were not used to interacting with computers and give them the impetus to start developing other chatbots. An improvement over ELIZA was a chatbot with a personality named PARRY developed in 1972. In 1995, the chatbot ALICE was developed which won the Loebnier Prize, an annual Turing Test, in years 2000, 2001, and 2004. It was the first computer to gain the rank of the “most human computer”. ALICE relies on a simple pattern-matching algorithm with the underlying intelligence based on the Artificial Intelligence Markup Language (AIML), which makes it possible for developers to define the building blocks of the chatbot knowledge. Chatbots, like Smarter Child in 2001, were developed and became available through messenger applications. The next step was the creation of virtual personal assistants like Apple Siri, Microsoft Cortana, Amazon Alexa, Google Assistant and IBM Watson.",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue[600]),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
