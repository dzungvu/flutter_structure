import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:sub_category_demo/classes/bases/base_screen.dart';
import 'package:sub_category_demo/classes/utils/constants.dart';
import 'package:sub_category_demo/controller/home/home_controller.dart';
import 'package:sub_category_demo/ui/screens/home/views/home_header.dart';
import 'package:sub_category_demo/ui/screens/home/views/home_item.dart';
import 'package:sub_category_demo/ui/utils/stateful_wrapper.dart';

class HomeScreen extends BaseScreen<HomeController> {
  static const routeName = '/home';
  @override
  Widget screen(BuildContext context) {
    return StatefulWrapper(
      onInit: () => controller.fetchHomeData(),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: GetX<HomeController>(
            init: controller,
            builder: (_) => controller.screenState == ScreenState.LOADING
                ? Center(
                    child: CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  )
                : Column(
                    children: [
                      HomeHeader(),
                      Expanded(
                        flex: 1,
                        child: GetX<HomeController>(
                          init: controller,
                          builder: (_) => PageView.builder(
                            controller: controller.pageController,
                            itemBuilder: (context, index) => HomeItem(
                              index: index.toDouble(),
                              data: controller.listSubCategory[index],
                            ),
                            itemCount:
                                controller.screenState == ScreenState.SUCCESS
                                    ? controller.listSubCategory.length
                                    : 0,
                            scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                          ),
                        ),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
