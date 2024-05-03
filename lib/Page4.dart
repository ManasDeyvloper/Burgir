import 'package:flutter/material.dart';
import 'package:burgir/main.dart';


class FourthRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fourth Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            navigateToPage(context, 4);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
