import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/routes.dart';

/// [AppBase] is the base of the application.
/// using [GetMaterialApp] to create the app.
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

      /// [AppRoutes.getRoutes] is the routes of the application.
      getPages: AppRoutes.getRoutes,
    );
  }
}
