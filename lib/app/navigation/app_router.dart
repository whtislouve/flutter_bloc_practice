import 'package:auto_route/auto_route.dart';
import '../registration/view/confirm_registration_screen.dart';
import '../registration/view/sms_pinput.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: ConfirmRegistrationRoute.page, initial: true),
        AutoRoute(page: SmsCodeRoute.page),
      ];
}
