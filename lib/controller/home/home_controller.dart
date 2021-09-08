import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:sub_category_demo/classes/bases/base_controller.dart';
import 'package:sub_category_demo/models/home/home_entity.dart';
import 'package:sub_category_demo/models/home/home_response.dart';
import 'package:sub_category_demo/repository/home_repository.dart';

class HomeController extends BaseController {
  HomeRepository _repository = HomeRepository();
  PageController pageController = PageController(viewportFraction: 0.7);

  var _currentPage = 0.0.obs;
  double get currentPage => _currentPage.value;

  List<HomeItemEntity> listSubCategory = [];

  HomeController() {
    pageController.addListener(() {
      _currentPage.value = pageController.page ?? 0.0;
    });
  }

  void fetchHomeData() async {
    var value = await _repository.fetchHomeData();
    if (!value.isError) {
      listSubCategory = (value.body as List<HomeItemResponse>).toListEntity();
    }
  }
}
