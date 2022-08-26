import 'package:flutter/material.dart';
import "./widgets/user_transactions.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomepage(),
    );
  }
}

// ignore: must_be_immutable
class MyHomepage extends StatelessWidget {
  MyHomepage({Key? key}) : super(key: key);
  final inputAmount = TextEditingController();
  final inputTitle = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            color: Color.fromARGB(255, 15, 82, 136),
            child: Card(
              child: Text("CHART!"),
            ),
          ),
          UserTransaction(),
        ],
      ),
    );
  }
}
