import 'package:childdriver/app_start_widget.dart';
import 'package:childdriver/config/helper/style.dart';
import 'package:childdriver/config/routes/app_router.dart';
import 'package:flutter/material.dart';

class AppProviderWidget extends StatelessWidget {
  const AppProviderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme(),
      debugShowCheckedModeBanner: false,
      home: const AppStartWidget(),
      onGenerateRoute: AppRouter.onGeneratedRoute,
      navigatorKey: AppRouter.navigatorKey,
    );
  }
}
