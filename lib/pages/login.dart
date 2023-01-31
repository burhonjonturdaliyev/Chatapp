// ignore_for_file: unused_field

import 'package:chat_bot/pages/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Home.dart';

class loginpage extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<loginpage> {
  TextEditingController _editingController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool isRememberMe = false;

  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Email",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2)),
              ]),
          height: 60,
          child: TextField(
              controller: _editingController,
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.blueAccent),
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(Icons.email_outlined, color: Colors.blue),
                  hintText: "Email",
                  hintStyle: TextStyle(color: Colors.blue))),
        )
      ],
    );
  }

  void tekshir(String email, String password) {
    if (email == "burkhan" && password == "1234" ||
        email == "sheralme" && password == "5678" ||
        email == "muhammadli" && password == "9012" ||
        email == "akbarshokh" && password == "3456") {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => chatapp(),
          ));
    } else {
      print("Error");
    }
    ;
  }

  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Password",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2)),
              ]),
          height: 60,
          child: TextField(
              controller: _passwordController,
              obscureText: true,
              style: TextStyle(color: Colors.blueAccent),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(Icons.lock_outline, color: Colors.blue[400]),
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.blue[400]))),
        )
      ],
    );
  }

  Widget buildForgotPassBtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () => print("Forgot Password Pressed"),

        //child: Padding(padding: EdgeInsets.only(right: 0)),
        child: Text(
          "Forgot a Password?",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget buildRememberCb() {
    return Container(
      height: 20,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: isRememberMe,
              checkColor: Colors.green,
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  if (value == true) {
                    isRememberMe = true;
                  } else {
                    isRememberMe = false;
                  }

                  // isRememberMe =true;
                });
              },
            ),
          ),
          Text(
            "Remember me",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLoginBtn() {
    return MaterialButton(
      minWidth: double.infinity,
      height: 60,
      onPressed: (() {
        setState(() {
          tekshir(_editingController.text, _passwordController.text);
          _editingController.clear();
          _passwordController.clear();
        });
      }),
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(50)),
      child: Text(
        "Login",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      color: Colors.blue[300],
    );
  }

  Widget buildSignUpBtn() {
    return GestureDetector(
      onTap: () => signupgape(),
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: "Don't have an Account? ",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              )),
          TextSpan(
              text: ' Sign Up',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ))
        ]),
      ),
    );
  }

  Widget inputFile({label, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey))),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0x661E90FF),
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
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Color(0x661E90FF),
                    Color(0x991E90FF),
                    Color(0xff1E90FF),
                    Color(0xff1E90FF),
                  ])),
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 120),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Login part",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 50),
                    buildEmail(),
                    SizedBox(height: 20),
                    buildPassword(),
                    SizedBox(height: 5),
                    buildForgotPassBtn(),
                    SizedBox(height: 15),
                    buildRememberCb(),
                    SizedBox(height: 25),
                    buildLoginBtn(),
                    SizedBox(height: 175),
                    buildSignUpBtn(),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
