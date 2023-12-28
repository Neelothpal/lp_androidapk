import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final User = FirebaseAuth.instance.currentUser!;

  //signUserOut method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 6, 33, 42),
        foregroundColor: Colors.white,
        actions: [IconButton(onPressed: signUserOut, icon: Icon(Icons.logout))],
      ),
      body: Center(
          child: Text(
        'Logged In as ' + User.email!,
        style: TextStyle(fontSize: 20),
      )),
    );
  }
}
