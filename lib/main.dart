// ignore_for_file: unused_element

import 'package:carousel_slider/carousel_slider.dart';
import 'package:chat_bot/About.dart';
import 'package:chat_bot/Contact.dart';
import 'package:chat_bot/Location.dart';
import 'package:chat_bot/admin.dart';
import 'package:chat_bot/login.dart';
import 'package:chat_bot/welcome.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'adminpanel.dart';
import 'chat_home_page.dart';

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

class chatapp extends StatefulWidget {
  const chatapp({Key? key}) : super(key: key);

  @override
  State<chatapp> createState() => _chatappState();
}

void _launcherURL(int value) async {
  String url = "";
  if (value == 1) {
    url = "https://www.shardauniversity.uz/";
  } else if (value == 2) {
    url = "https://t.me/+MVj33xnzAp4zYzJi";
  } else if (value == 3) {
    url = "https://t.me/Bek_advertising_group";
  } else if (value == 4) {
    url = "https://t.me/Bek_portfolio";
  }

  // ignore: deprecated_member_use
  if (await canLaunch(url)) {
    // ignore: deprecated_member_use
    await launch(
      url,
      forceSafariVC: true,
      forceWebView: true,
      enableJavaScript: true,
    );
  } else {
    throw "Could not launch $url";
  }
}

class _chatappState extends State<chatapp> {
  final List<String> imageList = [
    "https://appmaster.io/api/_files/ooRtJGmcZqEaSfTL468d8U/download/",
    "https://www.callcentrehelper.com/images/stories/2020/10/chat-bot-head-set-760.jpg",
    "https://miro.medium.com/max/1024/0*GyJvxRxMDinmWLtz.png",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzt9SLCb7B3SAOw1ll0BIT6kc0rfVydr0VF282FcGFcRcwmPm_lZiKjh0PQQ6D0XefHx8&usqp=CAU"
  ];

  Widget _BScard(int value) {
    String url = "";
    if (value == 1) {
      url = "https://miro.medium.com/max/720/1*vih036gD7fwgfj2jXHgKHA.webp";
    } else if (value == 2) {
      url =
          "https://image.shutterstock.com/image-vector/banner-social-media-marketing-technology-260nw-1142740865.jpg";
    } else if (value == 3) {
      url =
          "https://www.uxdesigninstitute.com/blog/wp-content/uploads/2022/04/101_ux_vs_ui_illustration_blog.png";
    } else if (value == 4) {
      url =
          "https://res.cloudinary.com/practicaldev/image/fetch/s--EfIG-oPF--/c_imagga_scale,f_auto,fl_progressive,h_420,q_auto,w_1000/https://thepracticaldev.s3.amazonaws.com/i/ssqkgebqme30hf4fwmw0.png";
    }

    return Card(
      child: Image.network(
        url,
        fit: BoxFit.fill,
        width: 150.0,
        height: 160.0,
      ),
      margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
    );
  }

  // Widget _BScard(int value) {
  //   String url = "";
  //   if (value == 1) {
  //     url = "https://miro.medium.com/max/720/1*vih036gD7fwgfj2jXHgKHA.webp";
  //     //"https://matwrites.com/wp-content/uploads/2018/03/Flutter.png";
  //   } else if (value == 2) {
  //     url =
  //         "https://image.shutterstock.com/image-vector/banner-social-media-marketing-technology-260nw-1142740865.jpg";
  //   } else if (value == 3) {
  //     url =
  //         "https://www.uxdesigninstitute.com/blog/wp-content/uploads/2022/04/101_ux_vs_ui_illustration_blog.png";
  //   } else if (value == 4) {
  //     url =
  //         "https://res.cloudinary.com/practicaldev/image/fetch/s--EfIG-oPF--/c_imagga_scale,f_auto,fl_progressive,h_420,q_auto,w_1000/https://thepracticaldev.s3.amazonaws.com/i/ssqkgebqme30hf4fwmw0.png";
  //   }
  //
  //   return Card(
  //     child: Image.network(
  //       url,
  //       fit: BoxFit.fill,
  //       width: 150.0,
  //       height: 160.0,
  //     ),
  //     margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
  //   );
  // }

  Widget _BSdetails(String Degree, String prof, int value) {
    String Desp = "";
    if (value == 1) {
      Desp = "Flutter and Graphic designer";
    } else if (value == 2) {
      Desp = "Social media marketolog";
    } else if (value == 3) {
      Desp = "UX/UI designer";
    } else if (value == 4) {
      Desp = "Java Backend developer";
    }

    return SizedBox(
      width: double.infinity,
      height: 140.0,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Degree,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              SizedBox(
                width: 135.0,
                child: Divider(),
              ),
              Text(prof),
              SizedBox(
                width: 170.0,
                child: Divider(),
              ),
              Text(Desp),
              SizedBox(
                width: 170.0,
                child: Divider(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("AI Chat Bot"),
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Icon(
                  Icons.support_agent,
                  size: 25.0,
                ),
              ),
            )
          ],
        ),
        drawer: new Drawer(
          child: new ListView(
            children: [
              new UserAccountsDrawerHeader(
                accountName: Text("Your name"),
                accountEmail: Text("www.shardauniversity.uz"),
                currentAccountPicture: new CircleAvatar(
                  child: new Image.asset(
                    "Image/Icon_user.png",
                  ),
                ),
              ),
              new ListTile(
                title: new Text(
                  "Admin page",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
                trailing: new Icon(
                  Icons.admin_panel_settings_outlined,
                  color: Colors.blue,
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => admin()));
                },
              ),
              Divider(color: Colors.blue),
              new ListTile(
                title: new Text(
                  "Logout",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
                trailing: new Icon(
                  Icons.login,
                  color: Colors.blue,
                ),
                onTap: () {
                  //  _launcherURL(1);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => loginpage()));
                },
              ),
              Divider(color: Colors.blue),
              new ListTile(
                title: new Text(
                  "Contact",
                  style: TextStyle(color: Colors.blue),
                ),
                trailing: new Icon(
                  Icons.add_call,
                  color: Colors.blue,
                ),
                onTap: () {
                  //  _launcherURL(2);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => contactpage()));
                },
              ),
              Divider(color: Colors.blue),
              new ListTile(
                title: new Text(
                  "Our Location",
                  style: TextStyle(color: Colors.blue),
                ),
                trailing: new Icon(Icons.map, color: Colors.blue),
                onTap: () {
                  //  _launcherURL(3);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => locationpage()));
                },
              ),
              Divider(color: Colors.blue),
              new ListTile(
                title: new Text(
                  "About this App",
                  style: TextStyle(color: Colors.blue),
                ),
                trailing: new Icon(
                  Icons.support,
                  color: Colors.blue,
                ),
                onTap: () {
                  // _launcherURL(4);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => aboutpage()));
                },
              ),
              Divider(color: Colors.blue),
            ],
          ),
        ),
        body: ListView(
          padding: EdgeInsets.only(top: 40.0),
          children: [
            Center(
              child: CarouselSlider(
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                  ),
                  items: imageList
                      .map((e) => ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Stack(
                              fit: StackFit.expand,
                              children: [
                                Image.network(
                                  e,
                                  width: 1050.0,
                                  height: 350.0,
                                  fit: BoxFit.cover,
                                )
                              ],
                            ),
                          ))
                      .toList()),
            ),
            new Divider(
              height: 50.0,
            ),
            _BScard(1),
            _BSdetails(
                "B.Tech (2 YEAR)", "Burkhan is owner of this application", 1),
            //Sherali
            _BScard(2),
            _BSdetails(
                "B.Tech (2 YEAR)", "Sherali is owner of this application", 2),
            //Muhammadali
            _BScard(3),
            _BSdetails("B.Tech (2 YEAR)",
                "Muhammadali is owner of this application", 3),

            //Akbarshokh
            _BScard(4),
            _BSdetails("B.Tech (2 YEAR)",
                "Akbarshokh is owner of this application", 4),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.support_agent),
          label: Text("Chat!"),
          tooltip: "Connect to our AI assistant",
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
        ));
  }
}
