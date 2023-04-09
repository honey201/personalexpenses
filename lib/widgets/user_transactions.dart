import 'package:flutter/material.dart';
import '../models/Transaction.dart';
import './new_transaction.dart';
import './transaction_list.dart';

class UserTransactions extends StatefulWidget {
  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction('t1', 'Shoes', 50.60, DateTime.now()),
    Transaction('t1', 'Utilities', 49.00, DateTime.now()),
  ];

  void _addTransaction(String txTitle, double txAmount) {
    final Transaction newTxn = Transaction(
        DateTime.now().toString(), txTitle, txAmount, DateTime.now());
    setState(() {
      _userTransactions.add(newTxn);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
