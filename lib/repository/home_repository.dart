import 'package:sub_category_demo/models/home/home_entity.dart';
import 'package:sub_category_demo/network/result.dart';
import 'package:sub_category_demo/network/services/home_service.dart';

class HomeRepository {
  HomeService _apiService = HomeService();
  Future<Result> fetchHomeData() async =>
      _apiService.getHome(endpoint: 'dzungvu/srtRepo/master/flutter_demo.json');
}
