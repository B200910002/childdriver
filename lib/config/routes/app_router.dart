import 'package:childdriver/app_start_widget.dart';
import 'package:childdriver/config/routes/routes.dart';
import 'package:childdriver/presentation/page/screen_index.dart';
import 'package:childdriver/presentation/page/sign/sign_in_screen.dart';
import 'package:childdriver/presentation/page/sign/sign_up_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static const String initialRoute = Routes.initialRoute;

  static Route<dynamic>? onGeneratedRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(
          builder: (_) => const AppStartWidget(),
          settings: const RouteSettings(
            name: Routes.initialRoute,
          ),
        );
      case Routes.tabsRoute:
        return MaterialPageRoute(
          builder: (_) => const Tabs(),
          settings: const RouteSettings(
            name: Routes.tabsRoute,
          ),
        );
      case Routes.signInScreenRoute:
        return MaterialPageRoute(
          builder: (_) => const SignInScreen(),
          settings: const RouteSettings(
            name: Routes.signInScreenRoute,
          ),
        );
      case Routes.signUpScreenRoute:
        return MaterialPageRoute(
          builder: (_) => const SignUpScreen(),
          settings: const RouteSettings(
            name: Routes.signUpScreenRoute,
          ),
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute<dynamic>(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Unknown Route'),
        ),
        body: const Center(
          child: Text('Unknown Route'),
        ),
      ),
    );
  }
}
