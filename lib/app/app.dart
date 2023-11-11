import 'package:flutter/material.dart';
import 'package:flutter_bloc_practice/app/navigation/app_router.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: false,
      splitScreenMode: false,
      child: MaterialApp.router(
        routerConfig: _appRouter.config(),
      ),
    );
  }
}
