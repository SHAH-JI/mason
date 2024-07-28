import 'package:flutter/material.dart';
import '../views/screens/main_screen.dart';

/// Service for handling the app routes
class AppRouteService {
  /// OnGenerate Route function
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    Route<dynamic> route;
    switch (settings.name) {
      case '/':
        route = MaterialPageRoute(builder: (context) => const MainScreen());
      default:
        throw UnimplementedError('Route ${settings.name} not implemented');
    }
    return route;
  }
}
