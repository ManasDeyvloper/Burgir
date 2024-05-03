
import 'package:flutter/material.dart';
import 'package:burgir/main.dart';



class NoBurgirRoute extends StatefulWidget {
  NoBurgirRoute({super.key});

  @override
  State<NoBurgirRoute> createState() => _NoBurgirState();
}

class _NoBurgirState extends State<NoBurgirRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('no Burgir'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {

          },
          child: const Text('Go third'),
        ),
      ),
    );
  }
}

