import 'package:get/instance_manager.dart';
import 'package:sub_category_demo/controller/home/home_controller.dart';
import 'package:sub_category_demo/network/api_provider.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => APIProvider());
  }
}
