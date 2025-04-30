import 'package:flutter/material.dart';

class Widget016 extends StatefulWidget {
  const Widget016({Key? key}) : super(key: key);

  @override
  Widget016State createState() => Widget016State();
}

class Widget016State extends State<Widget016> {
  bool _isFlat = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('N.17 - Widget016'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            AnimatedPhysicalModel(
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn,
              elevation: _isFlat ? 0 : 6.0,
              shape: BoxShape.rectangle,
              shadowColor: Colors.black,
              color: Colors.white,
              child: const SizedBox(
                height: 120.0,
                width: 120.0,
                child: Icon(Icons.android_outlined),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Click'),
              onPressed: () {
                setState(() {
                  _isFlat = !_isFlat;
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
