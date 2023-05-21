import 'package:get/get.dart';
import 'package:my_first_task/app/controllers/details_controller.dart';

class MainBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(DetailsController());
  }
}