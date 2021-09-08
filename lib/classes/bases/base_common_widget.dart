import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BaseCommonWidget implements _CommonWidgetInterface {
  @override
  void showLoading() {
    Get.defaultDialog(
        backgroundColor: Colors.black54,
        title: '',
        barrierDismissible: false,
        content: Container(
          width: double.infinity,
          height: 200,
          child: Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          ),
        ));
  }

  @override
  void hideLoading() {
    if (Get.isDialogOpen == true) Get.back();
  }

  @override
  void toast(String title, String message) {
    if (Get.isSnackbarOpen ?? false) {
      Get.back();
    }
    Get.snackbar(
      title,
      message,
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}

abstract class _CommonWidgetInterface {
  void showLoading();
  void hideLoading();
  void toast(String title, String message);
}
