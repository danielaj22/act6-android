import 'package:flutter/material.dart';
import '12.dart';
import '13.dart';
import '14.dart';
import '15.dart';
import '16.dart';
import '17.dart';
import '18.dart';
import '19.dart';
import '20.dart';
import '21.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seleccionar Pantalla'),
      ),
      body: ListView.builder(
        itemCount: 10, // Desde N.12 hasta N.21
        itemBuilder: (context, index) {
          final screenNumber = index + 12;
          final widgetNumber = index + 11;
          return ListTile(
            title: Text(
                'N.$screenNumber (Widget${widgetNumber.toString().padLeft(2, '0')})'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              _navigateToScreen(context, screenNumber);
            },
          );
        },
      ),
    );
  }

  void _navigateToScreen(BuildContext context, int screenNumber) {
    switch (screenNumber) {
      case 12:
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => const Widget011()));
        break;
      case 13:
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => const Widget012()));
        break;
      case 14:
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => const Widget013()));
        break;
      case 15:
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => const Widget014()));
        break;
      case 16:
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => const Widget015()));
        break;
      case 17:
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => const Widget016()));
        break;
      case 18:
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => const Widget017()));
        break;
      case 19:
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => const Widget018()));
        break;
      case 20:
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => const Widget019()));
        break;
      case 21:
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => const Widget020()));
        break;
      default:
        break;
    }
  }
}
