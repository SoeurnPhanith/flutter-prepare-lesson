import 'package:flutter/material.dart';
import 'package:flutter_prepare_lesson/layout/column_widget.dart';
import 'package:flutter_prepare_lesson/layout/container_widget.dart';
import 'package:flutter_prepare_lesson/layout/expanded_widget.dart';
import 'package:flutter_prepare_lesson/layout/flexible_widget.dart';
import 'package:flutter_prepare_lesson/layout/row_widget.dart';
import 'package:flutter_prepare_lesson/layout/stack_widget.dart';
import 'package:flutter_prepare_lesson/scrollable_widget/custom_scroll_view_widget_part1.dart';
import 'package:flutter_prepare_lesson/scrollable_widget/custom_scroll_view_widget_part2.dart';
import 'package:flutter_prepare_lesson/scrollable_widget/gridview_builder_widget.dart';
import 'package:flutter_prepare_lesson/scrollable_widget/listview_builder_widget.dart';
import 'package:flutter_prepare_lesson/scrollable_widget/listview_separated_widget.dart';
import 'package:flutter_prepare_lesson/scrollable_widget/listview_widget.dart';
import 'package:flutter_prepare_lesson/scrollable_widget/nested_list_view.dart';
import 'package:flutter_prepare_lesson/scrollable_widget/nested_scroll_view_widget_part1.dart';
import 'package:flutter_prepare_lesson/scrollable_widget/nested_scroll_view_widget_part2.dart';
import 'package:flutter_prepare_lesson/scrollable_widget/page_view_widget.dart';
import 'package:flutter_prepare_lesson/scrollable_widget/scroll_bar_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:  false,
      home:ScrollBarWidget()
    );
  }
}