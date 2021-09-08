import 'dart:convert';

import 'package:get/get_connect.dart';
import 'package:sub_category_demo/classes/utils/log_util.dart';
import 'package:sub_category_demo/config/app_config.dart';
import 'package:sub_category_demo/models/home/home_response.dart';
import 'package:sub_category_demo/network/result.dart';

class APIProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = AppConfig.BASE_URL;
    httpClient.addRequestModifier((request) {
      return request;
    });
    super.onInit();
  }

  Future<Result<List<HomeItemResponse>>> getHome(String endpoint) async {
    Log.d('Get', AppConfig.BASE_URL + endpoint);
    Result<List<HomeItemResponse>> _result =
        Result(isError: false, errorCode: 0, errorMessage: '');

    try {
      var res = await get(endpoint);
      Log.d('getData url', res.request?.url.toString());
      Log.d('APIProvider Body', res.body.toString());
      if (res.isOk) {
        var lsTemp = json.decode(res.bodyString ?? '');

        List<HomeItemResponse> lrt = (lsTemp)
            .map<HomeItemResponse>(
                (e) => HomeItemResponse.fromMap(e as Map<String, dynamic>))
            .toList();

        _result.body = lrt;
      } else {
        _result.isError = true;
        _result.errorCode = res.statusCode;
        _result.errorMessage = res.statusText;
      }
      return _result;
    } catch (e) {
      _result.isError = true;
      _result.errorMessage = e.toString();
      _result.errorCode = 9999;
      return _result;
    }
  }
}
