import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:sub_category_demo/classes/bases/base_common_widget.dart';

class BaseController extends GetxController with BaseCommonWidget {
  late final String tag = this.runtimeType.toString();
  @override
  void onInit() {
    super.onInit();
  }
}