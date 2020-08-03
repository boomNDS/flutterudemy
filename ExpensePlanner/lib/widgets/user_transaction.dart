import 'package:flutter/material.dart';

import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransaction extends StatelessWidget {
  final List<Transaction> userTransactions;
  final Function deleteTx;
  UserTransaction(this.userTransactions,this.deleteTx);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionList(
          transactions: userTransactions, deleteTx: deleteTx
        )
      ],
    );
  }
}
