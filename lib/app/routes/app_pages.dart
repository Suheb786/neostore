import 'package:get/get.dart';
import 'package:neostore/app/modules/home/views/login_view.dart';

import '../modules/home/bindings/login_binding.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
  ];
}
