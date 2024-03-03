import 'package:flutter/material.dart';

class BaseTextField extends StatelessWidget {
  const BaseTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        label: Text('Test'),
      ),
    );
  }
}
