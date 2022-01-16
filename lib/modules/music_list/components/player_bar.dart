import 'package:flutter/material.dart';
import 'package:music_player/models/music.dart';
import 'package:music_player/modules/music_list/bloc/player/player_bloc.dart';

/// [PlayerBar] is the widget that contains the player controls.
///
class PlayerBar extends StatelessWidget {
  final MusicPlayerState musicPlayerState;
  final void Function(Music) onResume;
  final void Function(Music) onPause;
  final VoidCallback onStop;
  const PlayerBar({
    Key? key,
    required this.musicPlayerState,
    required this.onResume,
    required this.onPause,
    required this.onStop,
  }) : super(key: key);

  Icon mapIcon() {
    return musicPlayerState.maybeWhen(
      playing: (music) => Icon(Icons.pause),
      paused: (music) => Icon(Icons.play_arrow),
      orElse: () => Icon(Icons.play_arrow),
    );
  }

  Function? mapOnPress() {
    return musicPlayerState.maybeWhen(
      playing: (music) {
        onPause(music!);
      },
      paused: (music) {
        onResume(music!);
      },
      orElse: () => onPause,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        height: 80,
        margin: EdgeInsets.only(top: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 1),
              blurRadius: 6,
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: mapIcon(),
                      onPressed: mapOnPress,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.stop,
                      ),
                      onPressed: onStop,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
