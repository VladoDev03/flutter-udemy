import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addTx;

  const NewTransaction(this.addTx);

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void submitData() {
    final String enteredTitle = titleController.text;
    final double? enteredAmount = double.tryParse(amountController.text);

    if (enteredTitle.isEmpty || enteredAmount! <= 0) {
      return;
    }

    widget.addTx(enteredTitle, enteredAmount);

    Navigator.of(context).pop();
  }

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
                onSubmitted: (_) => submitData(),
              ),
              TextField(
                // onChanged: (String value) => amountInput = value,
                controller: amountController,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                decoration: const InputDecoration(labelText: 'Amount'),
                onSubmitted: (_) => submitData(),
              ),
              TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.purple),
                ),
                onPressed: submitData,
                child: const Text('Add Transaction'),
              )
            ],
          ),
        ));
  }
}
