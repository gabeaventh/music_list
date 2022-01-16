import 'package:flutter/material.dart';
import 'package:music_player/models/music.dart';
import 'package:music_player/modules/music_list/bloc/player/player_bloc.dart';
import 'package:music_player/modules/music_list/components/music_tile.dart';
import 'package:music_player/modules/music_list/components/player_bar.dart';
import 'package:music_player/modules/music_list/components/search_bar.dart';
import 'package:music_player/modules/music_list/components/shimmer_tile.dart';

class MusicListView extends StatelessWidget {
  final TextEditingController controller;
  final List<Music> musicList;
  final int? playingMusicId;
  final bool isLoading;
  final bool isPlaying;
  final Animation<double> animation;
  final MusicPlayerState playerState;
  final void Function(Music) onTap;
  final Function(Music) onResume;
  final VoidCallback onStop;
  final Function(Music) onPause;
  final VoidCallback onSearch;
  const MusicListView({
    Key? key,
    required this.controller,
    required this.musicList,
    this.playingMusicId,
    this.isLoading = false,
    this.isPlaying = false,
    required this.animation,
    required this.playerState,
    required this.onTap,
    required this.onResume,
    required this.onStop,
    required this.onPause,
    required this.onSearch,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.all(12.0),
            child: MusicSearchBar(
              searchController: controller,
              hintText: "Search by Artist",
              onSearch: onSearch,
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0).copyWith(bottom: 0),
                child: isLoading
                    ? MusicListShimmer()
                    : musicList.isEmpty
                        ? Container()
                        : ListView.builder(
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return MusicTile(
                                music: musicList[index],
                                isPlaying:
                                    playingMusicId == musicList[index].trackId,
                                onTap: onTap,
                              );
                            },
                          ),
              ),
            ),
            SizeTransition(
              sizeFactor: animation,
              child: PlayerBar(
                musicPlayerState: playerState,
                onPause: onPause,
                onResume: onResume,
                onStop: onStop,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
