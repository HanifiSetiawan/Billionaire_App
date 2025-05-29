import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Balanceview extends StatelessWidget {
  double bankBalance;
  Balanceview({super.key, required this.bankBalance});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 9,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('Bank Balance'),
          SizedBox(height: 20),
          Text(
            '\$ ${NumberFormat.simpleCurrency(name: '').format(bankBalance)}',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
