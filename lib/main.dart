import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:screen_test/presentation/routes/app_router.dart';
import 'injection/service_locator.dart' as di;
import 'presentation/controllers/article_controller.dart';

void main() {
  di.init();

  Get.put(di.sl<ArticleController>());
  final router = AppRouter();
  runApp(MyApp(router: router));
}

class MyApp extends StatelessWidget {
  final AppRouter router;
  const MyApp({required this.router});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      title: 'Flutter News App',
      debugShowCheckedModeBanner: false,
      routerDelegate: router.delegate(),
      routeInformationParser: router.defaultRouteParser(),
    );
  }

}
