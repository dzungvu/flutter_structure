import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:sub_category_demo/classes/bases/base_controller.dart';

abstract class BaseScreen<T extends BaseController> extends StatelessWidget {
  const BaseScreen({Key? key}) : super(key: key);

  final String tag = '';
  T get controller => GetInstance().find<T>(tag: null);

  @override
  Widget build(BuildContext context) {
    // return GetBuilder<T>(
    //   builder: (controller) {
    return screen(context);
    //   },
    // );
  }

  Widget screen(BuildContext context);
}
