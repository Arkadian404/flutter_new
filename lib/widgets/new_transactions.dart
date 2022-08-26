import "package:flutter/material.dart";

class NewTransaction extends StatelessWidget {
  NewTransaction({Key? key}) : super(key: key);
  final inputAmount = TextEditingController();
  final inputTitle = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: "Title"),
                controller: inputTitle,
              ),
              TextField(
                decoration: InputDecoration(labelText: "Amount"),
                controller: inputAmount,
              ),
              FlatButton(
                onPressed: () {
                  print(inputAmount);
                  print(inputTitle);
                },
                child: Text("Add transaction"),
                textColor: Colors.purple,
              )
            ]),
      ),
    );
  }
}
