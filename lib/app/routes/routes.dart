import 'package:get/route_manager.dart';
import 'package:my_first_task/app/bindings/main_bindings.dart';
import '../../views/screens/home_screen.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: Routes.homeScreen,
      page: () => const HomeScreen(),
      binding: MainBindings(),
    ),
  ];
}

class Routes {
  static const homeScreen = '/homeScreen';
}
