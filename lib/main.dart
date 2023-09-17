import 'package:flutter/material.dart';
import 'package:poro_front_end/src/views/load_screen.dart';
import 'package:poro_front_end/src/views/home.dart';
import 'package:go_router/go_router.dart';

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