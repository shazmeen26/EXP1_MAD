import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Experiment 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _fontSize = 20.0;

  void _increaseFontSize() {
    setState(() {
      _fontSize += 2.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Experiment 1"),
      ),
      body: Center(
        child: Text(
          'Hello, Shazmeen!',
          style: TextStyle(fontSize: _fontSize),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Education',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _increaseFontSize();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Text size increased!'),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
