import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music_player/models/music.dart';
import 'package:music_player/modules/music_list/bloc/music_list_bloc.dart';
import 'package:music_player/modules/music_list/bloc/player/player_bloc.dart';
import 'package:music_player/modules/music_list/initiator.dart';
import 'package:music_player/modules/music_list/view.dart';

class MusicListPage extends StatefulWidget {
  const MusicListPage({Key? key}) : super(key: key);

  @override
  _MusicListPageState createState() => _MusicListPageState();
}

class _MusicListPageState extends State<MusicListPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  late MusicListInitiator _i;
  @override
  void initState() {
    _i = MusicListInitiator()..init(context);
    prepareAnimation();
    super.initState();
  }

  prepareAnimation() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    print(_i.player.playing);
    return StreamBuilder<PlayerState>(
        stream: _i.player.playerStateStream,
        builder: (context, snapshot) {
          PlayerState? _playerState = snapshot.data;
          ProcessingState? _processingState = _playerState?.processingState;
          bool? _isPlaying = _playerState?.playing;
          if (_isPlaying == true &&
              _processingState == ProcessingState.completed) {
            _i.stop();
          }
          print("_playerState: $_playerState");
          print("_processingState: $_processingState");
          print("_isPlaying: $_isPlaying");
          return BlocBuilder(
            bloc: _i.bloc,
            builder: (context, state) {
              List<Music>? _listMusic;
              int? _playingMusicId;
              if (state is MusicListLoaded) {
                _listMusic = state.loadedData?.results;
              }
              return BlocConsumer(
                bloc: _i.playerBloc,
                listener: (context, state) {
                  if (state is MusicPlaying) {
                    _animationController.forward();
                  }
                  if (state is MusicStopped) {
                    _animationController.reverse();
                  }
                },
                builder: (context, MusicPlayerState pState) {
                  if (pState is MusicPlaying) {
                    _playingMusicId = pState.music?.trackId;
                  }
                  if (pState is MusicStopped) {
                    _playingMusicId = null;
                  }
                  return MusicListView(
                    controller: _i.searchController,
                    playingMusicId: _playingMusicId,
                    musicList: _listMusic ?? [],
                    isLoading: state is MusicListLoading,
                    isPlaying: _i.player.playing,
                    animation: _animation,
                    playerState: pState,
                    onTap: _i.play,
                    onPause: _i.pause,
                    onResume: _i.resume,
                    onStop: _i.stop,
                    onSearch: _i.searchSongByArtist,
                  );
                },
              );
            },
          );
        });
  }
}
