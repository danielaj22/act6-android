import 'package:flutter/material.dart';

class Widget011 extends StatefulWidget {
  const Widget011({Key? key}) : super(key: key);

  @override
  State<Widget011> createState() => _Widget011State();
}

class _Widget011State extends State<Widget011> with TickerProviderStateMixin {
  bool _isPlay = false;
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('N.12 - Widget011'),
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
              'Icono Animado Play/Pause',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                setState(() {
                  if (_isPlay == false) {
                    _controller.forward();
                    _isPlay = true;
                  } else {
                    _controller.reverse();
                    _isPlay = false;
                  }
                });
              },
              child: AnimatedIcon(
                icon: AnimatedIcons.play_pause,
                progress: _controller,
                size: 100,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
