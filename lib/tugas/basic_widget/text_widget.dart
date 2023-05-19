import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC - Text'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: const Column(
          children: [
            Text(
              'Discover the most modern furniture',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1),
            )
          ],
        ),
      ),
    );
  }
}
