import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/pages/google_sign_in.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                final provider = Provider.of<GoogleSignInPrivider>(context,
                        listen: false);
                    provider.Logout();
              },
              icon: Icon(Icons.exit_to_app_outlined))
        ],
        title: Text('Logged in'),
      ),
    );
  }
}
