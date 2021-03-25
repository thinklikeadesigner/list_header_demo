import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personal Expenses"),
      ),
      body: Column(
        children: <Widget>[
          Card(
            child: Container(
              color: Colors.white,
              height: 200,
              child: Center(
                child: Text("I'm a fixed list header"),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text("Title $index"),
                    subtitle: Text("Jul 20, 2019"),
                    leading: CircleAvatar(
                      child: Text(
                        "$index",
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Colors.green,
                    ),
                  ),
                );
              },
              itemCount: 15,
            ),
          ),
        ],
      ),
    );
  }
}
