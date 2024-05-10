// ignore: unused_import
import 'package:flutter/material.dart';
// import 'package:my_app_first/Part_2/TextField.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'app',
      home: MyHomePage(),
    );
  }
}

// MyHomePage Widget
// Scaffold:
// appBar, body: Center(),drawer:(ListView(ListTitle))

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: const Center(child: Text('My HomePage')),
      drawer: Drawer(
        child: ListView(
          children: [
            const SizedBox(
              height: 60.0,
              child: DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text('Drawer Header'),
              ),
            ),
            ListTile(
                title: const Text('item one'),
                onTap: () {
                  // to move to a new Screen
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ItemOnePage(),
                      ));
                }),
            ListTile(
              title: const Text('item Two'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ItemTwoPage(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ItemOnePage extends StatelessWidget {
  const ItemOnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Item One'),
      ),
      body: const Center(child: Text('Item One Screen'),
      ),
      );
  }
}

// Item Two Page

class ItemTwoPage extends StatelessWidget {
  const ItemTwoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Item Two'),
      ),
      body: const Center(child: Text('Item Two Screen'),
      ),
      );
  }
}

