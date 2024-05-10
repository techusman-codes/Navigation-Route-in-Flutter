// Section Overview
// > NavigatioN Concepts OverView
// > Deeper Dive into BuildContext
// > Navigator Widget
// > Drawer Widget
// > Return and Sending Data
// > Revisiting our TO-DO-List Application
// ignore: unused_import
import 'package:flutter/material.dart';
// Using Navigation
// Lets have a App that
// FIRST SCREEN push() --> SECOND SCREEN pop() <--- First Screen

void main() {
  runApp(const MaterialApp(title: 'App', home: FirstScreen()));
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SCREEN ONE')),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondScreen()));
              },
              child: const Text('Go To Screen Two'))),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SCREEN TWO!')),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondScreen()
                        )
                        );
              },
              child: const Text('GO TO SCREEN ONE'))),
    );
  }
}
