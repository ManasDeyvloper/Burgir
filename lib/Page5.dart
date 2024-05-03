import 'package:flutter/material.dart';
import 'package:burgir/main.dart';


class FifthRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fifth Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            navigateToPage(context, 0); // Go back to the first page
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
