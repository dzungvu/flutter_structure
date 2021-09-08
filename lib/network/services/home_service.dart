import 'package:get/instance_manager.dart';
import 'package:sub_category_demo/network/api_provider.dart';
import 'package:sub_category_demo/network/result.dart';

class HomeService {
  APIProvider _apiProvider = GetInstance().find<APIProvider>();

  Future<Result> getHome({required String endpoint}) async {
    return await _apiProvider.getHome(endpoint);
  }
}