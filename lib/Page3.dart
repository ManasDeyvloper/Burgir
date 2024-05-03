
import 'package:flutter/material.dart';
import 'package:burgir/main.dart';

class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            navigateToPage(context, 3);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
