import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/routes.dart';

class AppBase extends StatelessWidget {
  const AppBase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: Get.key,
      navigatorObservers: [GetObserver()],
      title: 'Music Player',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: AppRoutes.getRoutes,
    );
  }
}
