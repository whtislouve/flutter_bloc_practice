import 'package:flutter/material.dart';
import 'package:flutter_bloc_practice/navigation/app_router.dart';

class App extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
    );
  }
}
