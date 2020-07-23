import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Loading Cards!"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Shimmer(
              color: Colors.black,
                child: Card(
              color: Colors.grey.shade300,
              margin: EdgeInsets.all(0),
              child: Container(
                constraints: BoxConstraints(
                    minHeight: 200,
                    minWidth: MediaQuery.of(context).size.width * 0.9),
              ),
            ),),
            Shimmer(
              color: Colors.black,
              child: Card(
                color: Colors.grey.shade300,
                margin: EdgeInsets.all(0),
                child: Container(
                  constraints: BoxConstraints(
                      minHeight: 200,
                      minWidth: MediaQuery.of(context).size.width * 0.9),
                ),
              ),),
            Shimmer(
              color: Colors.black,
              child: Card(
                color: Colors.grey.shade300,
                margin: EdgeInsets.all(0),
                child: Container(
                  constraints: BoxConstraints(
                      minHeight: 200,
                      minWidth: MediaQuery.of(context).size.width * 0.9),
                ),
              ),),
          ],
        ),
      ),
    );
  }
}
