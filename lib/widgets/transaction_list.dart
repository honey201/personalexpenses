import 'package:flutter/material.dart';
import '../models/Transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: transactions.map((tx) {
      return Card(
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.purple)),
              padding: EdgeInsets.all(10),
              child: Text(
                '\$${tx.amount}',
                style: TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tx.title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  // DateFormat('dd/MMM/yyyy').format(tx.date),
                  DateFormat.yMMMd().format(tx.date),
                  style: TextStyle(color: Colors.grey),
                )
              ],
            )
          ],
        ),
      );
    }).toList());
  }
}
