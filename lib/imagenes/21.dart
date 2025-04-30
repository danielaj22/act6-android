import 'package:flutter/material.dart';

class Widget020 extends StatefulWidget {
  const Widget020({Key? key}) : super(key: key);

  @override
  State<Widget020> createState() => _Widget020State();
}

class _Widget020State extends State<Widget020> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('N.21 - Widget020'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: Text(
                '$_count',
                key: ValueKey(_count),
                style: const TextStyle(fontSize: 40),
              ),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(scale: animation, child: child);
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Incrementar'),
              onPressed: () {
                setState(() {
                  _count += 1;
                });
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
