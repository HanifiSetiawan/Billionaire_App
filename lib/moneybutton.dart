import 'package:flutter/material.dart';

class AddMoney extends StatelessWidget {
  void Function() addMoneyFunction;
  // Functionality to add money will be implemented here
  AddMoney({super.key, required this.addMoneyFunction});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red[700],
          minimumSize: const Size(double.infinity, 50),
        ),
        onPressed: addMoneyFunction,
        child: const Text('Add Money'),
      ),
    );
  }
}
