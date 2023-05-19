import 'package:fic4_flutter_widgets_challenges/widget_lesson/navigation/navigation_pop.dart';
import 'package:flutter/material.dart';

class NavigationPush extends StatefulWidget {
  const NavigationPush({super.key});

  @override
  State<NavigationPush> createState() => _NavigationPushState();
}

class _NavigationPushState extends State<NavigationPush> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC - Navigation Push'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const NavigationPop(),
                  ),
                );
              },
              child: const Text('Go to next page'),
            ),
          ],
        ),
      ),
    );
  }
}
