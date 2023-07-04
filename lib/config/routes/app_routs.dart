import 'package:flutter/material.dart';
import 'package:route_task/features/products%20list/presentation/pages/items_list.dart';

class Routes {
  static const String productsList = '/';
}

class AppRoutes {
  static Route onGenerate(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.productsList:
        return MaterialPageRoute(
          builder: (context) => const ItemsList(),
        );
      default:
        {
          return MaterialPageRoute(
            builder: (context) => unDefineRoute(),
          );
        }
    }
  }

  static Widget unDefineRoute() => const Scaffold(
        body: Center(
          child: Text('unDefinedRoute'),
        ),
      );
}
