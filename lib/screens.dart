import 'package:flutter/material.dart';
import 'package:burgir/main.dart';

void gotofirst(context)
{
  currentPage = FirstRoute();

}

void gotosecond(context)
{
  currentPage = SecondRoute();

}

void gotothird(context)
{
  Navigator.popAndPushNamed(context, ThirdRoute().toString());

}void gotofourth(context)
{
  Navigator.popAndPushNamed(context, FourthRoute().toString());

}


void gotofifth(context)
{
  Navigator.popAndPushNamed(context, FifthRoute().toString());

}


class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            gotothird(context);
          },
          child: const Text('Go third'),
        ),
      ),
    );
  }
}


class ThirdRoute extends StatelessWidget{
  const ThirdRoute({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            gotofirst(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
class FourthRoute extends StatelessWidget{
  const FourthRoute({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forth Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            gotofirst(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}

class FifthRoute extends StatelessWidget{
  const FifthRoute({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fifth Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            gotofirst(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}