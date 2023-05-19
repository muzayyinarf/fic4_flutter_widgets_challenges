// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import '/tugas/basic_layout/basic_layout.dart';
import '/tugas/basic_widget/basic_widget.dart';
import '/tugas/navigation/navgation_page.dart';
import '/tugas/statefull_sample/stateless_stateful_widget.dart';
import 'package:flutter/material.dart';

import 'basic_form/basic_form.dart';

class FICColumnWidget extends StatefulWidget {
  const FICColumnWidget({Key? key}) : super(key: key);

  @override
  State<FICColumnWidget> createState() => _FICColumnWidgetState();
}

class _FICColumnWidgetState extends State<FICColumnWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: const [
          MenuItem(
            title: "Basic Form",
            to: BasicForm(),
          ),
          MenuItem(
            title: "Basic Layout",
            to: BasicLayout(),
          ),
          MenuItem(
            title: "Basic Widget",
            to: BasicWidget(),
          ),
          MenuItem(
            title: "Navigation Widget",
            to: NavigationPage(),
          ),
          MenuItem(
            title: "Stateless And StatefulWidget",
            to: StatelessStatefulWidget(),
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
