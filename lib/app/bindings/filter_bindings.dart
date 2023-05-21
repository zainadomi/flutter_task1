import 'package:get/get.dart';
import 'package:my_first_task/app/controllers/filter_controller.dart';

class FilterBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(FilterController());
  }

}