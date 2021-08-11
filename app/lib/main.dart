import 'package:flutter/material.dart';
import "./todos.dart";

void main() {
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TodoApp',
      // テーマカラー
      theme: ThemeData(primarySwatch: Colors.blue),
      // Todoリスト一覧画面を表示
      home: HomeRoutePage(),
      routes: <String, WidgetBuilder>{
        'main': (BuildContext context) => new HomeRoutePage(),
        'todos': (BuildContext context) => new TodoListPage(),
      },
    );
  }
}

class HomeRoutePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("メインルート画面")),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Text("TODOリスト"),
              onTap: () {
                Navigator.of(context).pushNamed('todos');
              },
            ),
          )
        ],
      ),
    );
  }
}
