import 'package:budget_tracker/base/widgets/base_scaffold.dart';
import 'package:budget_tracker/base/widgets/base_textfield.dart';
import 'package:flutter/material.dart';

class AddTransactionScreen extends StatelessWidget {
  static String name = 'Add Transaction';

  const AddTransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      appBarTitle: Text(name),
      body: const Column(
        children: [
          BaseTextField(),
        ],
      ),
    );
  }
}
