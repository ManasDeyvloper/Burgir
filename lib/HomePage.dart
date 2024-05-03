import 'package:burgir/NoBurgir.dart';
import 'package:flutter/material.dart';
import 'package:burgir/main.dart';

class FirstRoute extends StatefulWidget {
  @override
  State<FirstRoute> createState() => _FirstRouteState();
}

class _FirstRouteState extends State<FirstRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //navigateToPage(context, 1);
         Navigator.push(context, MaterialPageRoute(builder: (context)=> NoBurgirRoute()));
          },
          child: const Text('Open route'),
        ),
      ),
    );
  }
}
