import 'package:billionaireapp/balance.dart';
import 'package:billionaireapp/moneybutton.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double bankBalance = 0;
  void pressed() async {
    setState(() {
      bankBalance = bankBalance + 500.0;
    });
    // Obtain shared preferences.
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    // Save an double value to 'decimal' key.
    await prefs.setDouble('bankBalance', bankBalance);
    print(bankBalance);
  }

  @override
  void initState() {
    getBankBalance();
    super.initState();
  }

  void getBankBalance() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      bankBalance = prefs.getDouble('bankBalance') ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Billionaire App',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.blueGrey,
        scaffoldBackgroundColor: const Color.fromARGB(255, 39, 39, 39),
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Billionaire App'), centerTitle: true),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Balanceview(bankBalance: bankBalance),
              AddMoney(addMoneyFunction: pressed),
            ],
          ),
        ),
      ),
    );
  }
}
