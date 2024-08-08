import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Open Data',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text('Open Data'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Beranda'),
              Tab(icon: Icon(Icons.favorite), text: 'Favorite'),
              Tab(icon: Icon(Icons.help_outline), text: 'Help'),
              Tab(icon: Icon(Icons.info_outline), text: 'About'),
            ],
          ),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // Handle menu button press
            },
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text('Welcome Page'),
            ),
            Center(
              child: Text('Favorite page'),
            ),
            Center(
              child: Text('Help Page'),
            ),
            Center(
              child: Text('About Page'),
            ),
          ],
        ),
      ),
    );
  }
}