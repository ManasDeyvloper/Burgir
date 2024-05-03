import 'package:flutter/material.dart';
import 'package:burgir/main.dart';



class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            navigateToPage(context, 2);
          },
          child: const Text('Go third'),
        ),
      ),
    );
  }
}
