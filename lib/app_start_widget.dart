import 'package:childdriver/config/routes/routes.dart';
import 'package:flutter/material.dart';

class AppStartWidget extends StatefulWidget {
  const AppStartWidget({super.key});

  @override
  State<AppStartWidget> createState() => AppStartWidgetState();
}

class AppStartWidgetState extends State<AppStartWidget> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      Navigator.pushNamedAndRemoveUntil(context, Routes.tabsRoute, (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Text("Initializing..."));
  }
}
