import 'package:budget_tracker/base/widgets/base_list_tile.dart';
import 'package:budget_tracker/base/widgets/base_scaffold.dart';
import 'package:budget_tracker/features/transaction_tracking/presentation/screens/add_transaction_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

List<String> samples = List<String>.generate(1000, (index) => 'Item $index');

class TransactionOverviewScreen extends StatelessWidget {
  static String name = 'Transaction Overview';

  const TransactionOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      appBarTitle: Text(name),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pushNamed(AddTransactionScreen.name);
        },
        child: const Icon(Icons.add),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 100,
            child: Text('test'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: samples.length,
              prototypeItem: BaseListTile(
                title: Text(samples.first),
              ),
              itemBuilder: (BuildContext context, int index) => BaseListTile(
                title: Text(samples[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
