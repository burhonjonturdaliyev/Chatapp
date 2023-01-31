import 'package:flutter/material.dart';

class contactpage extends StatelessWidget {
  const contactpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Contact"),
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
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 SizedBox(
                   height: 5,
                 ),
                 Center(
                   child: Text(
                     "Our Team members",
                     style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 20,
                         color: Colors.green),
                   ),
                 ),
                 SizedBox(
                   height: 10,
                 ),
                 Center(
                   child: Text(
                     "First team coder:",
                     style: TextStyle(
                         fontSize: 18,
                         fontWeight: FontWeight.w600,
                         color: Colors.blue),
                   ),
                 ),
                 SizedBox(
                   height: 5,
                 ),
                 Row(
                   children: [
                     Expanded(
                       child: Text(
                         "Burkhonjon Turdialiyev - Flutter and Graphic designer.\nAdress: Namangan Region, Chust disrtict, Bibiona 211\nPhone number: +998(90)-693-65-94",
                         style: TextStyle(
                           fontWeight: FontWeight.normal,
                           fontSize: 15,
                           color: Colors.deepPurpleAccent,
                         ),
                       ),
                     ),
                   ],
                 ),
                 SizedBox(
                   height: 10,
                 ),
                 Center(
                   child: Text(
                     "Second team coder:",
                     style: TextStyle(
                         fontSize: 18,
                         fontWeight: FontWeight.w600,
                         color: Colors.blue),
                   ),
                 ),
                 SizedBox(
                   height: 5,
                 ),
                 Row(
                   children: [
                     Expanded(
                       child: Text(
                         "Akbarshokh Umirzaqov - Java Backend developer.\nAdress: Andijan Region, Old city street, M.Saidov 20\nPhone number: +998(95)-045-11-20",
                         style: TextStyle(
                           fontWeight: FontWeight.normal,
                           fontSize: 15,
                           color: Colors.deepPurpleAccent,
                         ),
                       ),
                     ),
                   ],
                 ),
                 SizedBox(
                   height: 10,
                 ),
                 Center(
                   child: Text(
                     "Third team coder:",
                     style: TextStyle(
                         fontSize: 18,
                         fontWeight: FontWeight.w600,
                         color: Colors.blue),
                   ),
                 ),
                 SizedBox(
                   height: 5,
                 ),
                 Row(
                   children: [
                     Expanded(
                       child: Text(
                         "Muhammadali Shokirov - UX/UI designer.\nAdress: Andijan Region, Izboskan District, Chuvama Str\nPhone number: +998(90)-205-86-76",
                         style: TextStyle(
                           fontWeight: FontWeight.normal,
                           fontSize: 15,
                           color: Colors.deepPurpleAccent,
                         ),
                       ),
                     ),
                   ],
                 ),
                 SizedBox(
                   height: 10,
                 ),
                 Center(
                   child: Text(
                     "Fourth team coder:",
                     style: TextStyle(
                         fontSize: 18,
                         fontWeight: FontWeight.w600,
                         color: Colors.blue),
                   ),
                 ),
                 SizedBox(
                   height: 5,
                 ),
                 Row(
                   children: [
                     Expanded(
                       child: Text(
                         "Sherali Yusupov - Python developer and SMM marketolog.\nAdress: Surkhandarya Region, Shurchi district, Yalti street\nPhone number: +998(90)-543-65-07",
                         style: TextStyle(
                           fontWeight: FontWeight.normal,
                           fontSize: 15,
                           color: Colors.deepPurpleAccent,
                         ),
                       ),
                     ),
                   ],
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
