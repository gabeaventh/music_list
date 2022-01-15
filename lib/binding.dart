import 'package:get/get.dart';
import 'package:music_player/modules/music_list/bloc/music_list_bloc.dart';
import 'package:music_player/services/music_list/service.dart';

class MusicListBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MusicListBloc>(MusicListBloc.new);
    Get.lazyPut<MusicListService>(MusicListService.new);
  }
}
