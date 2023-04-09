import 'package:flutter/material.dart';
import '../models/Transaction.dart';

class NewTransaction extends StatelessWidget {
  final Function _addTransactionHandler;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this._addTransactionHandler);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              // onChanged: (val)=>titleInput=val,
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              // onChanged: (val)=>amountInput=val,
              controller: amountController,
            ),
            TextButton(
              onPressed: () {
                _addTransactionHandler(
                    titleController.text, double.parse(amountController.text));
              },
              child: Text('Add Transaction'),
              style: TextButton.styleFrom(foregroundColor: Colors.purple),
            )
          ],
        ),
      ),
    );
  }
}
