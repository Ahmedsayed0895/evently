import 'package:flutter/material.dart';

void main() => runApp(EventlyApp());

class EventlyApp extends StatelessWidget {
  const EventlyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("data"),
        ),
      ),
    );
  }
}
