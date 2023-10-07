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
        elevation: 6,
        backgroundColor: Colors.cyan,
        onPressed: () {
          SnakbarMsg("Add item", context);
        },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 6,
        currentIndex: 0,
        backgroundColor: Colors.cyan,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.sms), label: "Sms"),
          BottomNavigationBarItem(icon: Icon(Icons.comment), label: "Comment"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
        ],
        onTap: (int index) {
          if (index == 0) {
            SnakbarMsg("Sms sent", context);
          }
          if (index == 1) {
            SnakbarMsg("Comment Add", context);
          }
          if (index == 2) {
            SnakbarMsg("Profile open", context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.cyan),
                accountName: Text("Md Eusuf Uddin"),
                accountEmail: Text("eusuf.cse@gmail.com"),
                currentAccountPicture: Image.network(
                    "https://e7.pngegg.com/pngimages/666/815/png-clipart-dart-google-chrome-web-application-flutter-darts-blue-angle.png"),
                onDetailsPressed: () {
                  SnakbarMsg("Details clicked....", context);
                  Navigator.pop(context);
                },
              ),
            ),
            ListTile(
              title: Text("About"),
              leading: Icon(Icons.person),
              onTap: () {
                SnakbarMsg("About clicked..", context);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Education"),
              leading: Icon(Icons.edit),
              onTap: () {
                SnakbarMsg("Education clicked..", context);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Contact"),
              leading: Icon(Icons.contact_page),
              onTap: () {
                SnakbarMsg("Contact clicked..", context);
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              height: 100,
              width: 100,
              child: Image.network(
                  "https://e7.pngegg.com/pngimages/666/815/png-clipart-dart-google-chrome-web-application-flutter-darts-blue-angle.png")),
          Container(
            height: 100,
            width: 100,
            child: Image.network("https://e7.pngegg.com/pngimages/666/815/png-clipart-dart-google-chrome-web-application-flutter-darts-blue-angle.png"),
            margin: EdgeInsets.fromLTRB(50, 60, 60, 60),
          ),
          Container(
              height: 100,
              width: 100,
              child: Image.network(
                  "https://e7.pngegg.com/pngimages/666/815/png-clipart-dart-google-chrome-web-application-flutter-darts-blue-angle.png"))
        ],
      ),
    );
  }
}
