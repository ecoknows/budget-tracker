import 'package:budget_tracker/base/widgets/base_appbar.dart';
import 'package:flutter/material.dart';

class BaseScaffold extends StatelessWidget {
  final Widget body;
  final FloatingActionButton? floatingActionButton;
  final Text? appBarTitle;

  const BaseScaffold({
    super.key,
    required this.body,
    this.floatingActionButton,
    this.appBarTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        title: appBarTitle,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: body,
      ),
      floatingActionButton: floatingActionButton,
    );
  }
}
