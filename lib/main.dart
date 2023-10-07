import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.brown),
    );
  }
}

class HomeScreen extends StatelessWidget {
  SnakbarMsg(String msg, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Example"),
        backgroundColor: Colors.cyan,
        elevation: 8,
        toolbarHeight: 60,
        titleSpacing: 12,
        centerTitle: false,
        shadowColor: Colors.black,
        actions: [
          IconButton(
              onPressed: () {
                SnakbarMsg("Sms sent", context);
              },
              icon: Icon(Icons.sms)),
          IconButton(
              onPressed: () {
                SnakbarMsg("Notification sent", context);
              },
              icon: Icon(Icons.notifications)),
          IconButton(
              onPressed: () {
                SnakbarMsg("Logout clicked", context);
              },
              icon: Icon(Icons.logout))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        elevation: 6,
        onPressed: () {
          SnakbarMsg("Add item", context);
        },
      ),
    );
  }
}
