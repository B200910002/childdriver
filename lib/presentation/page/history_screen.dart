import 'package:childdriver/presentation/widget/custom_app_bar.dart';
import 'package:childdriver/presentation/widget/custom_draw_menu.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  final TabController tabController;

  const HistoryScreen({super.key, required this.tabController});

  @override
  State<StatefulWidget> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "carrental", isSubScreen: false),
      drawer: const CustomDrawerMenu(),
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return SingleChildScrollView(
      child: Text("page1"),
    );
  }
}
