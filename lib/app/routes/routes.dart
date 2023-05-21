import 'package:get/route_manager.dart';
import 'package:my_first_task/app/bindings/filter_bindings.dart';
import 'package:my_first_task/app/bindings/main_bindings.dart';
import 'package:my_first_task/views/screens/filter_screen.dart';
import '../../views/screens/home_screen.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: Routes.homeScreen,
      page: () => const HomeScreen(),
      binding: MainBindings(),
    ),
    GetPage(
      name: Routes.filterScreen,
      binding: FilterBindings(),
      page: () => const FilterScreen(),
    ),
  ];
}

class Routes {
  static const homeScreen = '/homeScreen';
  static const filterScreen = '/filterScreen';
}
