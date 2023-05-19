import 'package:flutter/material.dart';

class SliverWidget extends StatefulWidget {
  const SliverWidget({super.key});

  @override
  State<SliverWidget> createState() => _SliverWidgetState();
}

class _SliverWidgetState extends State<SliverWidget> {
  bool pinned = true;
  bool snap = false;
  bool floating = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC - Sliver'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: pinned,
            snap: snap,
            floating: floating,
            expandedHeight: 160,
            backgroundColor: Colors.purple,
            foregroundColor: Colors.purple,
            surfaceTintColor: Colors.purple,
            primary: true,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text(
                'Sliver App Bar',
                style: TextStyle(color: Colors.black),
              ),
              background: FlutterLogo(),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => Container(
                      color: index.isOdd ? Colors.white : Colors.blue[200],
                      height: 100,
                      child: Center(
                        child: Text(
                          '$index',
                          textScaleFactor: 5,
                        ),
                      ),
                    ),
                childCount: 20),
          ),
        ],
      ),
    );
  }
}
