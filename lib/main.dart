import 'package:flutter/material.dart';

import 'ar_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter AR'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'ARアプリのサンプル',
            ),
            ElevatedButton(
              child: Text('AR画面へ'),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => ArPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
