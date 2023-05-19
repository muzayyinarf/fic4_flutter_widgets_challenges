// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'button_widget.dart';
import 'circle_avatar_widget.dart';
import 'container_widget.dart';
import 'icon_widget.dart';
import 'image_widget.dart';
import 'scaffold_widget.dart';
import 'text_widget.dart';
import 'package:flutter/material.dart';

class BasicWidget extends StatefulWidget {
  const BasicWidget({Key? key}) : super(key: key);

  @override
  State<BasicWidget> createState() => _BasicWidgetState();
}

class _BasicWidgetState extends State<BasicWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Basic Layout"),
        actions: const [],
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          const MenuItem(
            title: "Button Widget",
            to: ButtonWidget(),
          ),
          MenuItem(
            title: "Circle Avatar Widget",
            to: CircleAvatarWidget(),
          ),
          const MenuItem(
            title: "Container Widget",
            to: ContainerWidget(),
          ),
          const MenuItem(
            title: "Icon Widget",
            to: IconWidget(),
          ),
          const MenuItem(
            title: "Image Widget",
            to: ImageWidget(),
          ),
          const MenuItem(
            title: "Scaffold Widget",
            to: ScaffoldWidget(),
          ),
          const MenuItem(
            title: "Text Widget",
            to: TextWidget(),
          ),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String title;
  final Widget to;

  const MenuItem({
    Key? key,
    required this.title,
    required this.to,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => to,
              ));
        },
      ),
    );
  }
}
