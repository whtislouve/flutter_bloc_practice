// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ConfirmRegistrationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ConfirmRegistrationScreen(),
      );
    },
    SmsCodeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SmsCodeScreen(),
      );
    },
  };
}

/// generated route for
/// [ConfirmRegistrationScreen]
class ConfirmRegistrationRoute extends PageRouteInfo<void> {
  const ConfirmRegistrationRoute({List<PageRouteInfo>? children})
      : super(
          ConfirmRegistrationRoute.name,
          initialChildren: children,
        );

  static const String name = 'ConfirmRegistrationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SmsCodeScreen]
class SmsCodeRoute extends PageRouteInfo<void> {
  const SmsCodeRoute({List<PageRouteInfo>? children})
      : super(
          SmsCodeRoute.name,
          initialChildren: children,
        );

  static const String name = 'SmsCodeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
