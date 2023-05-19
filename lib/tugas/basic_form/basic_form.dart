import 'form_widget.dart';
import 'dialog_widget.dart';
import 'package:flutter/material.dart';

class BasicForm extends StatefulWidget {
  const BasicForm({Key? key}) : super(key: key);

  @override
  State<BasicForm> createState() => _BasicFormState();
}

class _BasicFormState extends State<BasicForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Basic Form"),
        actions: const [],
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: const [
          MenuItem(
            title: "Dialog Widget",
            to: DialogWidget(),
          ),
          MenuItem(
            title: "Form Widget",
            to: FormWidget(),
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
