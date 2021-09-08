import 'package:get/route_manager.dart';
import 'package:sub_category_demo/ui/screens/home/home_binding.dart';
import 'package:sub_category_demo/ui/screens/home/home_screen.dart';

final pages = [
  GetPage(
    name: HomeScreen.routeName,
    page: () => HomeScreen(),
    binding: HomeBinding(),
  ),
];
