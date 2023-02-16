import 'package:flutter/material.dart';
import 'package:sample/first_page.dart';

void main() {
  runApp(const MyApp());
  //print("test");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '単位取得状況',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: '単位取得状況'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
              child: Text(
                "基礎工学部",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(onPrimary: Colors.black),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "工学部",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(onPrimary: Colors.black),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "理学部",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(onPrimary: Colors.black),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "法学部",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(onPrimary: Colors.black),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "経済学部",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(onPrimary: Colors.black),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "人間科学学部",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(onPrimary: Colors.black),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "医学部",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(onPrimary: Colors.black),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "歯学部",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(onPrimary: Colors.black),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "薬学部",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(onPrimary: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
