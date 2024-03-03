import 'package:flutter/material.dart';

class BaseListTile extends StatelessWidget {
  final Widget? title;

  const BaseListTile({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: title,
    );
  }
}
