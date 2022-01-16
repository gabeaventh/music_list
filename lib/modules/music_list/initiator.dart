import 'package:audio_session/audio_session.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Rx;
import 'package:just_audio/just_audio.dart';
import 'package:music_player/core/core_initiator.dart';
import 'package:music_player/models/music.dart';
import 'package:music_player/modules/music_list/bloc/music_list_bloc.dart';
import 'package:music_player/modules/music_list/bloc/player/player_bloc.dart';

/// [MusicListInitiator] is a class that extends [CoreInitiator] that initiates some of the
/// variables and functions that are used in the [MusicList] module.
class MusicListInitiator extends CoreInitiator {
  /// Initiate variables
  late MusicListBloc _bloc;
  late MusicPlayerBloc _playerBloc;
  late TextEditingController _searchController;
  late AudioPlayer _player;

  @override
  void dispose() {
    _searchController.dispose();
    _bloc.close();
    _player.dispose();
    _playerBloc.close();
  }

  @override
  void init(BuildContext context) {
    _bloc = Get.find<MusicListBloc>();
    _playerBloc = Get.find<MusicPlayerBloc>();
    _searchController = TextEditingController();
    _player = AudioPlayer();
  }

  /// Getters
  MusicListBloc get bloc => _bloc;
  MusicPlayerBloc get playerBloc => _playerBloc;
  TextEditingController get searchController => _searchController;
  AudioPlayer get player => _player;

  void play(Music music) {
    _player.stop();
    prepareMusic(music.previewUrl ?? "");
    resume(music);
  }

  void searchSongByArtist() {
    _bloc.add(SearchByArtist(artist: _searchController.text));
  }

  void stop() {
    _player.stop();
    _playerBloc.add(MusicPlayerEvent.stop());
  }

  void pause(Music music) {
    _player.pause();
    _playerBloc.add(MusicPlayerEvent.pause(music: music));
  }

  void resume(Music music) {
    _player.play();
    _playerBloc.add(MusicPlayerEvent.start(music: music));
  }

  /// Prepare the music to be played
  /// [url] is the url of the music from the ITunes API
  Future<void> prepareMusic(String url) async {
    final session = await AudioSession.instance;
    await session.configure(AudioSessionConfiguration.music());
    _player.playbackEventStream.listen(
      (event) {},
      onError: (error) {
        print(error);
      },
    );

    try {
      await _player.setAudioSource(
        AudioSource.uri(Uri.parse(url)),
      );
    } catch (e) {
      print(e);
    }
  }
}
