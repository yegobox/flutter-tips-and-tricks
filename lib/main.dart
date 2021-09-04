import 'package:flutter/material.dart';

const imageUrl = 'https://bit.ly/3gT5Qk2';
const text = 'Flutter is an open-source UI software development'
    ' kit created by Google. It is used to develop cross platform applications'
    ' for Android, iOS, Linux, Mac, Windows, Google Fuchsia, '
    'and the web from a single codebase.';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo Home Page'),
        ),
        body: Column(children: <Widget>[
          Container(width: 200, height: 200, child: Image.network(imageUrl)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SelectableText(
              text,
              textAlign: TextAlign.center,
              showCursor: true,
              cursorColor: Colors.red,
              cursorRadius: Radius.circular(10),
              toolbarOptions: ToolbarOptions(copy: true, selectAll: true),
            ),
          )
        ]));
  }
}
