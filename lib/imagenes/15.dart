import 'package:flutter/material.dart';

class Widget014 extends StatefulWidget {
  const Widget014({Key? key}) : super(key: key);

  @override
  State<Widget014> createState() => _Widget014State();
}

class _Widget014State extends State<Widget014> {
  double _opacityLevel = 1.0;

  void _toggleOpacity() {
    setState(() {
      _opacityLevel = _opacityLevel == 0 ? 1.0 : 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('N.15 - Widget014'),
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
              'Animación de Opacidad',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            AnimatedOpacity(
              opacity: _opacityLevel,
              duration: const Duration(seconds: 2),
              child: const FlutterLogo(
                size: 100,
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: _toggleOpacity,
              child: Text(
                _opacityLevel == 1.0 ? 'Desvanecer' : 'Aparecer',
                style: const TextStyle(fontSize: 18),
              ),
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
