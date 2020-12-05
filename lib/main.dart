import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text('Default'),
            Text('data', style: TextStyle(fontSize: 100)),
            Container(
              width: double.infinity,
              // 表示位置を指定
              child: Text(
                'TextAlign.right',
                textAlign: TextAlign.right,
              ),
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(19),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.deepPurpleAccent, width: 3),
                  borderRadius: BorderRadius.circular(700), // 上限なんぼ？
                  color: Colors.blue),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://placehold.jp/200x100.png'),
                ),
              ),
              child: Text('Image'),
              width: 200,
              height: 100,
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
