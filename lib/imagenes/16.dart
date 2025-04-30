import 'package:flutter/material.dart';

class Widget015 extends StatefulWidget {
  const Widget015({Key? key}) : super(key: key);

  @override
  State<Widget015> createState() => _Widget015State();
}

class _Widget015State extends State<Widget015> {
  double _paddingValue = 0.0;
  final _animationDuration = const Duration(seconds: 2);

  void _togglePadding() {
    setState(() {
      _paddingValue = _paddingValue == 0.0 ? 100.0 : 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('N.16 - Widget015'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Animación de Padding',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: _togglePadding,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              child: Text(
                _paddingValue == 0.0 ? 'Aumentar Padding' : 'Reducir Padding',
                style: const TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Padding actual: $_paddingValue',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 30),
            AnimatedPadding(
              padding: EdgeInsets.all(_paddingValue),
              duration: _animationDuration,
              curve: Curves.easeInOut,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
