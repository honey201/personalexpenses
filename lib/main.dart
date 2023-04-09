import 'package:flutter/material.dart';
import './widgets/transaction_list.dart';
import 'models/Transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

// String? titleInput;
// String? amountInput;

  final titleController=TextEditingController();
  final amountController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        //  mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              elevation: 10,
              child: Text('Chart!'),
              color: Colors.blue,
            ),
          ),
          Card(
            elevation: 5,
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
                    print(titleController.text);
                    print(amountController.text);
                  },
                  child: Text('Add Transaction'),
                  style: TextButton.styleFrom(foregroundColor: Colors.purple),
                )
              ],
            ),
          ),
        TransactionList(),
        ],
      ),
      floatingActionButton: IconButton(
        icon: Icon(Icons.add_circle),
        iconSize: 50,
        color: Colors.blue,
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
