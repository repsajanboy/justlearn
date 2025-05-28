import 'package:flutter/material.dart';
import 'package:justlearn/presentation/bottom_navigation/bottom_nav.dart';
import 'package:justlearn/presentation/landing/landing.dart';

import 'app_router_names.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteNames.landing:
        return MaterialPageRoute(
          builder: (_) => const LandingScreen(),
        );
      case RouteNames.selectLanguage:
        return MaterialPageRoute(
          builder: (_) => const SelectLanguageScreen(),
        );
      case RouteNames.menu:
        return MaterialPageRoute(
          builder: (_) => const BottomNavScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route define for ${routeSettings.name}'),
            ),
          ),
        );
    }
  }
}
