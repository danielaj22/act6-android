import 'package:flutter/material.dart';

class Widget019 extends StatefulWidget {
  const Widget019({Key? key}) : super(key: key);

  @override
  State<Widget019> createState() => _Widget019State();
}

class _Widget019State extends State<Widget019> {
  double _size = 300;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('N.20 - Widget019'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            _size = _size == 300 ? 100 : 300;
          });
        },
        child: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedSize(
                  curve: Curves.easeIn,
                  duration: const Duration(seconds: 1),
                  child: FlutterLogo(size: _size),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
