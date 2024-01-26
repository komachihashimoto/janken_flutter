import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String jankenText = '✊';

  void _chooseJankenText() {
    setState(() {
      jankenText = '✋';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('じゃんけんアプリ'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '相手',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              '✌',
              style: TextStyle(fontSize: 80),
            ),
            SizedBox (
              height: 80,
            ),
            Text(
              '自分',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              jankenText,
              style: TextStyle(fontSize: 170),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                jankenText = '✊';
              });
              },
            child: const Text(
              '✊',
              style: TextStyle(fontSize: 30),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                jankenText = '✌';
              });
            },
            child: const Text(
              '✌',
              style: TextStyle(fontSize: 30),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                jankenText = '✋';
              });
            },
            child: const Text(
              '✋',
              style: TextStyle(fontSize: 30),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
