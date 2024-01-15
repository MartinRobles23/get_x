import 'package:get/get.dart';
import 'package:get_x/presentation/controllers/list_controller.dart';
import 'package:get_x/presentation/controllers/tap_controller.dart';

class InitDependency implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TapControllerGetX());
    Get.lazyPut(() => ListController());
  }
}
