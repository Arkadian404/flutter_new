import "package:flutter/material.dart";

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final inputAmount = TextEditingController();
  final inputTitle = TextEditingController();

  NewTransaction(this.addTx);

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
                  addTx(inputTitle.text, double.parse(inputAmount.text));
                },
                child: Text("Add transaction"),
                textColor: Colors.purple,
              )
            ]),
      ),
    );
  }
}
