import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:sub_category_demo/classes/bases/base_screen.dart';
import 'package:sub_category_demo/controller/home/home_controller.dart';
import 'package:sub_category_demo/ui/screens/home/views/home_header.dart';
import 'package:sub_category_demo/ui/utils/stateful_wrapper.dart';

class HomeScreen extends BaseScreen<HomeController> {
  static const routeName = '/sub_category';
  @override
  Widget screen(BuildContext context) {
    return StatefulWrapper(
      onInit: () => controller.fetchHomeData(),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              HomeHeader(),
              Expanded(
                flex: 1,
                child:
                    // GetX<SubCategoryController>(
                    // init: controller,
                    // builder: (_) =>
                    PageView.builder(
                  // controller: controller.pageController,
                  itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.all(16.0),
                    color: Colors.amber,
                  ),
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                ),
                // ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
