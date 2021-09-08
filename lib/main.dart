import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:sub_category_demo/pages.dart';
import 'package:sub_category_demo/ui/screens/home/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();    //Make sure binding class run completed before the screen create
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomeScreen.routeName,
      // routes: routes,
      getPages: pages,
    );
  }
}
