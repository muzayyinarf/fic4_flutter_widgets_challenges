// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:fic4_flutter_widgets_challenges/tugas/basic_layout/center_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_layout/column_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_layout/expanded_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_layout/gridview_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_layout/listview_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_layout/padding_widget.dart';
import 'package:fic4_flutter_widgets_challenges/tugas/basic_layout/row_widget.dart';
import 'package:fic4_flutter_widgets_challenges/widget_lesson/basic_layout/aspectratio_widget.dart';
import 'package:flutter/material.dart';

class BasicLayout extends StatefulWidget {
  const BasicLayout({Key? key}) : super(key: key);

  @override
  State<BasicLayout> createState() => _BasicLayoutState();
}

class _BasicLayoutState extends State<BasicLayout> {
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
            title: "Aspect Ratio Widget",
            to: AspectRatioWidget(),
          ),
          const MenuItem(
            title: "Center Widget",
            to: CenterWidget(),
          ),
          const MenuItem(
            title: "Column Widget",
            to: ColumnWidget(),
          ),
          const MenuItem(
            title: "Expanded Widget",
            to: ExpandedWidget(),
          ),
          const MenuItem(
            title: "GridView Widget",
            to: GridViewWidget(),
          ),
          MenuItem(
            title: "ListView Widget",
            to: ListViewWidget(),
          ),
          const MenuItem(
            title: "Padding Widget",
            to: PaddingWidget(),
          ),
          const MenuItem(
            title: "Center Widget",
            to: RowWidget(),
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
