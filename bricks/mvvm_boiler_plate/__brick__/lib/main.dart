import 'package:{{project}}/services/app_route_service.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/// Main app widget
class MyApp extends StatelessWidget {
  /// Default constructor`
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      onGenerateRoute: AppRouteService().onGenerateRoute,
      onGenerateInitialRoutes: (initialRoute) {
              return [
                AppRouteService().onGenerateRoute(
                  RouteSettings(name: initialRoute),
                ),
              ];
            }
    );
  }
}
