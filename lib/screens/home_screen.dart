import 'package:cash_flow/screens/cash_flow/list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../config/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const platform = MethodChannel('br.com.vinibelo.cashflow/calculator');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () async {
                await platform.invokeMethod('openCalculator');
              },
              icon: const Icon(
                Icons.calculate, size: 32,
              ),
            ),
          ),
        ],
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Cash Flow"),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(
            context,
            formCashFlowRoute
          );
        }
      ),
      body: Center(
        child: ListScreen(),
      ),
    );
  }
}
