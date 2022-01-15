import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:music_player/core/core_initiator.dart';
import 'package:music_player/modules/music_list/bloc/music_list_bloc.dart';

class MusicListInitiator extends CoreInitiator {
  late MusicListBloc _bloc;

  MusicListBloc get bloc => _bloc;
  @override
  void dispose() {}

  @override
  void init(BuildContext context) {
    _bloc = Get.find<MusicListBloc>();
    _bloc.add(MusicListEvent.searchByArtist(artist: "twice"));
  }
}
