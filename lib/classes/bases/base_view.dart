import 'package:flutter/material.dart';
import 'base_controller.dart';
export 'base_controller.dart';
import 'package:get/get.dart';

abstract class BaseView<T extends BaseController> extends StatelessWidget {
  const BaseView({Key? key}) : super(key: key);

  final String? tag = null;
  T get controller => GetInstance().find<T>(tag: tag);

  @override
  Widget build(BuildContext context) {
    // return GetBuilder<T>(
    //   builder: (controller) {
    return view(context);
    //   },
    // );
  }

  Widget view(BuildContext context);
}