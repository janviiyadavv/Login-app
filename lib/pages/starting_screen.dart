// main page that displays buttons to ask user method for authentication
//signin with email / signin with google

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterapp/auth/login.dart';
import 'package:flutterapp/pages/google_sign_in.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("welcome back")),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 280),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: Size(300, 60),
                  ),
                  onPressed: () {
                    final provider = Provider.of<GoogleSignInPrivider>(context,
                        listen: false);
                    provider.GoogleLogIn();
                  },
                  icon: FaIcon(
                    FontAwesomeIcons.google,
                    color: Colors.red,
                  ),
                  label: Text("Signup with Google",
                      style: TextStyle(color: Colors.black, fontSize: 20))),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: Size(300, 60),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginForm()));
                  },
                  icon:Icon(Icons.mail, color: Colors.red,), 
                  // FaIcon(
                  //   FontAwesomeIcons.mailchimp,
                  //   color: Colors.red,
                  // ),
                  label: Text("Signup with Email",
                      style: TextStyle(color: Colors.black, fontSize: 20))),
            ),
          ],
        ),
      ),
    );
  }
}
