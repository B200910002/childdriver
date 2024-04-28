import 'package:childdriver/presentation/widget/custom_app_bar.dart';
import 'package:childdriver/presentation/widget/custom_draw_menu.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  final TabController tabController;

  const ProfileScreen({super.key, required this.tabController});

  @override
  State<StatefulWidget> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> with TickerProviderStateMixin {
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
      child: Text("page3"),
    );
  }
}
