import 'package:flutter/material.dart';
import 'package:poro_front_end/src/views/help.dart';
import 'package:poro_front_end/src/views/load_screen.dart';
import 'package:poro_front_end/src/views/home.dart';
import 'package:go_router/go_router.dart';
import 'package:poro_front_end/src/views/poro/poro_controller.dart';
import 'package:poro_front_end/src/views/poro/poro_selector.dart';

final GoRouter _router = GoRouter(
  initialLocation: "/loading_screen",
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const Home();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'loading_screen',
          builder: (BuildContext context, GoRouterState state) {
            return const LoadScreen();
          },
        ),
        GoRoute(
          path: 'qr_code_lector',
          builder: (BuildContext context, GoRouterState state) {
            return const PoroSelector();
          },
        ),
        GoRoute(
          path: 'play',
          builder: (BuildContext context, GoRouterState state) {
            return const PoroController();
          },
        ),
        GoRoute(
          path: 'settings',
          builder: (BuildContext context, GoRouterState state) {
            return const LoadScreen();
          },
        ),
        GoRoute(
          path: 'help',
          builder: (BuildContext context, GoRouterState state) {
            return const Help();
          },
        ),
      ],
    ),
  ],
);

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}

void main() {
  const app = App();
  runApp(app);
}