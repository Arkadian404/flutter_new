import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './transaction.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter App',
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatelessWidget {
  const MyHomepage({Key? key}) : super(key: key);
  static List<Transaction> transactions = [
    Transaction(id: 't1', title: 'New shoes', amount: 60, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'Weekly groceries', amount: 50, date: DateTime.now()),
  ];

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
              Card(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(labelText: "Title"),
                        ),
                        TextField(
                          decoration: InputDecoration(labelText: "Amount"),
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Text("Add transaction"),
                          textColor: Colors.purple,
                        )
                      ]),
                ),
              ),
              Column(
                children: transactions
                    .map(
                      (tx) => Card(
                        child: Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 15),
                              child: Text(
                                "Price: ${tx.amount} \$",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.purple),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.purple,
                                  width: 2,
                                ),
                              ),
                              padding: EdgeInsets.all(10),
                            ),
                            Column(children: <Widget>[
                              Text(tx.title),
                              Text(
                                DateFormat.yMMMd().format(tx.date),
                                style: TextStyle(color: Colors.grey),
                              ),
                            ])
                          ],
                        ),
                      ),
                    )
                    .toList(),
              )
            ]));
  }
}
