import 'dart:math';

import 'package:flutter/material.dart';
import 'transaction_form.dart';
import 'transaction_list.dart';
import 'package:expenses/models/transaction.dart';

class TransactionUser extends StatefulWidget {
  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Tenis da Nike',
      value: 310.79,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Curso Flutter',
      value: 22.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Internet',
      value: 115,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't4',
      title: 'Energia',
      value: 300.10,
      date: DateTime.now(),
    ),
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionForm(_addTransaction), //Comunicação Indireta
        TransactionList(_transactions), //Comunicação Direta
      ],
    );
  }
}
