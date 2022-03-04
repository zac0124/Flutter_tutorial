// ignore_for_file: prefer_const_constructors

import 'package:expense_planner/transaction.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'New item',
      amount: 68.66,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Next new item',
      amount: 68.66,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.lightBlue,
                child: Text('Chart!'),
                elevation: 5,
              ),
            ),
            Column(
              children: transactions.map((Transaction) {
                return Card(
                  child: Text(Transaction.title),
                );
              }).toList(),
            ),
          ],
        ));
  }
}
