import 'package:flutter/material.dart';

class Widget018 extends StatefulWidget {
  const Widget018({Key? key}) : super(key: key);

  @override
  State<Widget018> createState() => _Widget018State();
}

class _Widget018State extends State<Widget018> {
  double turns = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('N.19 - Widget018'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(50),
              child: AnimatedRotation(
                turns: turns,
                duration: const Duration(seconds: 1),
                child: const FlutterLogo(
                  size: 100,
                ),
              ),
            ),
            ElevatedButton(
              child: const Text('Rotar Logo'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                setState(() => turns += 1 / 4);
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
