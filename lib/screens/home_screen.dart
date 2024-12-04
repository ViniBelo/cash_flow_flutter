import 'package:cash_flow/screens/cash_flow/list_screen.dart';
import 'package:flutter/material.dart';

import '../config/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
