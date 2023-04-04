import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TextField(
                // onChanged: (String value) {
                //   titleInput = value;
                // },
                controller: titleController,
                decoration: const InputDecoration(labelText: 'Title'),
              ),
              TextField(
                // onChanged: (String value) => amountInput = value,
                controller: amountController,
                decoration: const InputDecoration(labelText: 'Amount'),
              ),
              TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.purple),
                ),
                onPressed: () {
                  addTx(titleController.text,
                      double.parse(amountController.text));
                },
                child: const Text('Add Transaction'),
              )
            ],
          ),
        ));
  }
}
