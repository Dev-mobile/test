import 'package:flutter/material.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';

import 'auth/auth.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  static MaterialPageRoute get route => MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signed in'),
      ),
      body: Align(
        alignment: Alignment.topLeft,
        child: RaisedButton(
          onPressed: () {
            context.signOut();
            Navigator.of(context).push(Authscreen.route);
          },
          child: const Text('Sign out'),
        ),
      ),
    );
  }
}
