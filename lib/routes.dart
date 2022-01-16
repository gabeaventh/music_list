import 'package:get/get.dart';
import 'package:music_player/binding.dart';
import 'package:music_player/modules/music_list/page.dart';

/// Initialize the Routes of the Application
/// and bind the necessary bindings to the Routes
class AppRoutes {
  static List<GetPage> getRoutes = [
    GetPage(
      name: "/",
      page: MusicListPage.new,
      binding: MusicListBinding(),
    )
  ];
}
