import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

import '../models/transaction.dart';
import './transaction_item.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteTx;

  TransactionList({this.transactions, this.deleteTx});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: transactions.isEmpty
            ? LayoutBuilder(builder: (ctx, constraints) {
                return Column(
                  children: <Widget>[
                    Text(
                      "No transactions added yet!",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: constraints.maxHeight * 0.6,
                        child: Image.asset(
                          'assets/images/waiting.png',
                          fit: BoxFit.cover,
                        ))
                  ],
                );
              })
            // : ListView.builder(
            //     itemBuilder: (ctx, index) {
            //       return TransactionItem(transaction: transactions[index], deleteTx: deleteTx);
            //     },
            //     itemCount: transactions.length,
            //   ),
            : ListView(
                children: transactions
                    .map((tx) => TransactionItem(
                        key: ValueKey(tx.id),
                        transaction: tx,
                        deleteTx: deleteTx))
                    .toList(),
              ));
  }
}

// return Card(
//   child: Row(
//     children: <Widget>[
//       Container(
//         margin:
//             EdgeInsets.symmetric(vertical: 10, horizontal: 15),
//         decoration: BoxDecoration(
//             border: Border.all(
//                 color: Theme.of(context).primaryColor,
//                 width: 2)),
//         padding: EdgeInsets.all(10),
//         child: Text(
//           '\$${transactions[index].amount.toStringAsFixed(2)}',
//           style: TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 20,
//               color: Theme.of(context).primaryColor),
//         ),
//       ),
//       Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Text(
//             transactions[index].title,
//             style: TextStyle(
//                 fontWeight: FontWeight.bold, fontSize: 15),
//           ),
//           Text(
//             DateFormat.yMMMd().format(transactions[index].date),
//             style: TextStyle(color: Colors.grey, fontSize: 12),
//           )
//         ],
//       )
//     ],
//   ),
// );
